-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int DEFAULT NULL,
  `totalprice` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_user_id_foreign` (`user_id`),
  KEY `cart_product_id_foreign` (`product_id`),
  CONSTRAINT `cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (74,3,1,1,100,'2024-12-31 20:47:37','2024-12-31 20:47:37'),(75,3,10,1,100,'2024-12-31 23:28:42','2024-12-31 23:28:42');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `totalprice` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_user_id_foreign` (`user_id`),
  KEY `carts_product_id_foreign` (`product_id`),
  CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (3,3,1,2,200,'2024-12-03 12:04:25','2024-12-03 12:08:18'),(4,3,2,3,3666,'2024-12-03 12:08:35','2024-12-03 12:09:49');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'shoes','zTYLnKm5JLKNApvw3nlNY6I5xBlWKQxWp3IbYrac.png',1,'2024-11-22 15:14:05','2024-12-30 08:29:44'),(2,'Health & Care','bWLHAtwgcR1npQ1a9oVDHIYoIcqkatuurDQgO9N5.png',1,'2024-11-22 15:14:42','2024-12-31 02:44:38'),(3,'Clothing','fjuP0DEzEPdAZD8P6JqWefsObtE1DEgl1mK4rKwm.png',1,'2024-11-22 15:16:59','2024-12-31 02:38:40'),(5,'Furniture &Home Decor','0J2JFw4dGXDDPjYLr3mY7SsXogceVel6ToKPlIL2.png',1,'2024-11-22 15:17:28','2024-12-31 02:40:13'),(6,'Food & Beverages','9xnZenjuwQy4aALIcvzeLeLgsA6uMc8fzqZk46YT.png',1,'2024-11-24 19:15:26','2024-12-31 02:42:40'),(9,'Toys & Games','s3Z5itdwFssx5dMrsBKnbeNTvAwafok18ANPf0y0.png',1,'2024-11-24 19:40:58','2024-12-31 02:44:47'),(10,'Animal feed','USncGU88zcXt00c4ULBPX3x0XjzcM58tS0t3Axlg.png',1,'2024-11-24 19:41:20','2024-12-31 02:36:03'),(12,'Computer','MYw0ftFZ3Ujog97QgFOyLRlXEf7ehR0aW4Rok3zv.png',1,'2024-12-30 08:39:51','2024-12-30 08:39:51'),(13,'Mobile Phone','0ES1SRwQZuOYafDvHFk0eoVdnVyYkJiTSk9TSxTT.png',1,'2024-12-30 08:46:59','2024-12-30 20:02:22'),(14,'Accessories','MworEFvnyNjS8zppYCZ8evtsR3Jaj9a6CBTUPbY0.png',1,'2024-12-30 08:48:57','2024-12-30 20:03:36'),(15,'Jewelry','GyoNKLtknOASe1k4kjVTTLY5j9VRyOWXYCgGwTea.png',1,'2024-12-31 03:10:52','2024-12-31 03:10:52');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `colors_product_id_foreign` (`product_id`),
  CONSTRAINT `colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Red',1,NULL,NULL);
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favorite_user_id_foreign` (`user_id`),
  KEY `favorite_product_id_foreign` (`product_id`),
  CONSTRAINT `favorite_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `favorite_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feedback_user_id_foreign` (`user_id`),
  CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,3,'TbXwgL9GLS8PViyRIuRdqYHuuA2vj32sf3YB4IR1.png','cccccccccccccccccccccccccccccccccccccccc','2024-12-31 07:29:56','2024-12-31 07:29:56'),(2,3,'4HsDiZRG0am0SNzebzx6hBUfBcCc4XtrtgjDKQ81.png','cccccccccccccccccccccccccccccccccccccccc','2024-12-31 07:31:00','2024-12-31 07:31:00'),(3,3,'8qSBUGKui18bHnqUYaPeTtgF2J27DeAaLGLIUHvr.jpg','ggggggggggggggggggggggg','2024-12-31 07:50:36','2024-12-31 07:50:36'),(4,3,'Zmxd6iqqYdFzxEec5fUJ8Mo2jVUes7lDffGG2Fgg.jpg','ggggggggggggggggggggggg','2024-12-31 07:52:46','2024-12-31 07:52:46'),(5,3,'CcbZQAsIUjdirci4w8IAxksEr3t27leGhAsvA9lV.jpg','ggggggggggggggggggggggg','2024-12-31 07:56:34','2024-12-31 07:56:34'),(6,3,'2KAwz0HZCoN3RuAbh15966NoYdYEHgPY3000VwE9.jpg','Error on Screen all please fit it Thank ?','2024-12-31 07:57:39','2024-12-31 07:57:39'),(7,3,'T3jLGwELvKh4huL7YUnMP6QKBhIV6JyK469ToCZP.jpg','Error on Screen all please fit it Thank ?','2024-12-31 08:00:15','2024-12-31 08:00:15'),(8,3,'H5qDLKQrkghXHPKRi77dhQsEeO738lyHX5VdnEn9.jpg','Error on Screen all please fit it Thank ?','2024-12-31 08:00:27','2024-12-31 08:00:27'),(9,3,'66oCiFWymQx616Qp718t0wck7Fokv6lXmjxxFChz.jpg','Error on Screen all please fit it Thank ?','2024-12-31 08:00:38','2024-12-31 08:00:38'),(10,3,'aTuwaOFDGGt0yutKxmHBwaPchrFVYDNFYK2E8pOR.jpg','sgrt','2024-12-31 08:01:11','2024-12-31 08:01:11'),(11,3,'FIB7R1mnDTNd6PVqBh1GAfMPf9n4ASqjb0tYLXcn.jpg','sgerhgf','2024-12-31 08:03:06','2024-12-31 08:03:06'),(12,3,'efB6nyDSvcaAPPZxCHG538qmvKdc20H4gN5Q8FXJ.jpg','dyyuytt','2024-12-31 08:05:27','2024-12-31 08:05:27'),(13,3,'R0cbsuvejFKMDvx4eDCtwxYj6uWLm6WWSc4xQ4xn.jpg','zvhgy','2024-12-31 08:05:34','2024-12-31 08:05:34'),(14,3,'uBmOTz2bz3Kl0p6sLwyr38BhzDBtLGeD8ec3azaR.jpg','dfgg','2024-12-31 08:05:47','2024-12-31 08:05:47'),(15,3,'g8u4cb3Ia7Mkj2SDNAcYOpskV4SxlAT2bJNjVDLl.jpg','ttavdgfhfguife','2024-12-31 08:07:02','2024-12-31 08:07:02'),(16,3,'HNdBdOAea2MlX5w1NvXPmDB04r18NOaxCH8e7VNI.jpg','ttavdgfhfguife','2024-12-31 08:07:12','2024-12-31 08:07:12'),(17,3,'d3mIFiTFTuMP8tDsgh0Clw1crCctl7sIjxpvTGvH.jpg','eytr','2024-12-31 08:07:39','2024-12-31 08:07:39'),(18,3,'NciWKFu0VO2Bborai4mtX4RzTdTsOjMUwswpucBR.jpg','eytr','2024-12-31 08:07:47','2024-12-31 08:07:47'),(19,3,'kAxBonZecEsEcpnR2bCFTuXwrD797tQajPOQfB4n.jpg','eytr','2024-12-31 08:08:17','2024-12-31 08:08:17');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `image_product_id_foreign` (`product_id`),
  CONSTRAINT `image_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (17,'0vxg4MFIAp43kZfQ9PvwGaq74PJTB3plSX8xDWV8.png',2,'2024-12-02 11:32:01','2024-12-02 11:32:01'),(18,'Ap807b2YO0y7lTKv0XlL5L9Ubtv3OVhA5C43OlyT.png',3,'2024-12-02 11:32:12','2024-12-02 11:32:12'),(19,'qG3Go9hrN4MV49bJVyl33wJImi9UwsFFWo6Ipmpk.png',4,'2024-12-02 11:32:27','2024-12-02 11:32:27'),(20,'nb8UiL0Wj4IXGomPUjn8Ip2MiasYmBr5xAgRJQmt.png',5,'2024-12-02 11:32:37','2024-12-02 11:32:37'),(21,'pSQpeouVTM95ixfbrC33hRSaihozamPHm5WkIUYp.png',8,'2024-12-02 11:32:48','2024-12-02 11:32:48'),(22,'4TSHsPmtOU2wIk53mRE30zKlrVC4zJxFrUZJba9M.png',10,'2024-12-02 11:32:59','2024-12-02 11:32:59'),(24,'RGfW4PuAxkntk8ozLrpVLrBaxxT66UJINs8jUfHi.png',11,'2024-12-02 11:33:21','2024-12-02 11:33:21'),(25,'fanzhzINJmAfFctwWEBdW4gpSxMdsGRyCT6oyYLq.jpg',12,'2024-12-02 11:33:32','2024-12-02 11:33:32'),(26,'X7Mwt7DMp8fIBcH68HHu6dNC2Wcf8ExhiJL9lB1t.png',13,'2024-12-02 11:33:57','2024-12-02 11:33:57'),(27,'au32IdMWyhw9s7x2Vw97zhUg1vNY2xsS3zKZUYBI.png',14,'2024-12-02 11:34:13','2024-12-02 11:34:13'),(28,'ve3mppuZ7l7YdPOBiBr2TpXCEYLOMqHErBmbYeVI.png',15,'2024-12-02 11:34:29','2024-12-02 11:34:29'),(29,'wJhfdXesiwSLiyf80SwqjG0XMMcclvyMAsMsyNeW.png',16,'2024-12-02 11:34:46','2024-12-02 11:34:46'),(30,'Z7PLSF1GObvhOzipwh6Oe2OkpeHKarVnT8qRLsvc.png',17,'2024-12-02 11:35:26','2024-12-02 11:35:26'),(31,'1uS8kYKmf8zzFyPr5FSNOxEE0LRR8BsF7gxQqGw8.png',18,'2024-12-02 11:35:56','2024-12-02 11:35:56'),(32,'JUIyfU2w1W6V5N3x41vgSWXsj0WyayT8MZJJXnvb.png',19,'2024-12-02 11:38:12','2024-12-02 11:38:12'),(33,'oU8Xxrikob122gmmcLJQd4ZEKpY9mTIPder2ogZp.png',20,'2024-12-02 11:38:28','2024-12-02 11:38:28'),(34,'qPrmYIkK74KFP0pvIxbIz8A8Q3xuJgxctdaYaEeq.png',21,'2024-12-02 11:38:47','2024-12-02 11:38:47'),(35,'B17wp33J8DtOyCkN3Wy7NX9tdWWfy6e6y5Wo5lNM.png',22,'2024-12-02 11:39:06','2024-12-02 11:39:06'),(36,'fRdEHNOORNb4AxXrmkvU5jxorCAz8oL156jY3KaW.png',23,'2024-12-02 11:39:21','2024-12-02 11:39:21'),(37,'dmiAmOtTSZKmGDJ2Vw96041owy5bUmxLE3m52Obv.png',24,'2024-12-02 11:39:34','2024-12-02 11:39:34'),(38,'Hkh8Dt4qTPrMwccGbsEp7dmNpGyzIwYXk1SOEmiM.png',25,'2024-12-02 11:39:50','2024-12-02 11:39:50'),(39,'1TWlgd65PoFcrTL0QyvUdFUgJk3CKSsyt2pcAK0R.png',26,'2024-12-02 11:40:37','2024-12-02 11:40:37'),(40,'n3imBDOZtOlKrTFOGm0Y9lWHoxYlDOQxxmOXLeiP.png',27,'2024-12-02 11:40:51','2024-12-02 11:40:51'),(44,'jMBHPjC8qno4oLGcAQFcmUY9DjiASD2dGf5QHgEG.png',1,'2024-12-30 08:28:59','2024-12-30 08:28:59'),(45,'r6gi9AZK7quPLCwpTJb8a32xon2V4GCymjbhY7bq.png',28,'2024-12-30 20:08:14','2024-12-30 20:08:14'),(46,'zxX3N1XBxG2hismpgDDXBSPR7RHgEHG2uLTKkJds.png',29,'2024-12-30 20:13:06','2024-12-30 20:13:06'),(47,'mfyXBpZA0FfvmWLXAG5jrLkMMC2YFCR2jmM4NWum.png',30,'2024-12-30 20:33:49','2024-12-30 20:33:49'),(48,'cPN8UC3soa6glaNzskX0v8saYLy2pGj7NKaWs8yj.png',31,'2024-12-30 20:40:06','2024-12-30 20:40:06'),(49,'qz2iloDK8KTs0IKnvp8Tftt4jGAItb6nBgfDIxjk.png',41,'2024-12-30 23:28:04','2024-12-30 23:28:04'),(50,'n30nfh8RPcMn17mZXV0gCS8suyeKgAByZozKYnnE.png',42,'2024-12-30 23:28:39','2024-12-30 23:28:39'),(51,'ij9bGcODpynigob6GtLJwSPLJGp4TYYSKB2EVfmr.png',43,'2024-12-30 23:29:00','2024-12-30 23:29:00'),(52,'rqg1p9fErzLiMIyXYgVqSARyL1dH2I8tQjN1FLOl.png',44,'2024-12-30 23:30:14','2024-12-30 23:30:14'),(53,'tC5dp0c9jqTAJ7LlSwwkX4Xh4zizwUVkwzgaQR2X.png',45,'2024-12-30 23:30:37','2024-12-30 23:30:37'),(54,'5PdU59KiZ9n1Ueoet7gqWsxiyXCq4pJ3uKZtvXv2.png',46,'2024-12-30 23:31:17','2024-12-30 23:31:17'),(55,'UmO79kSZYiDc0RsrvohX1Y8SDaNOIWAA7B5qfTlC.png',47,'2024-12-30 23:31:36','2024-12-30 23:31:36'),(56,'cECQMzno2cG4ldFWN3Soh0UTyrZnxy9iOw1jEKKb.png',48,'2024-12-30 23:32:06','2024-12-30 23:32:06'),(57,'0WBwHQIalAqmVenLyUay3V7MyOeUggPqxLgqU1g5.png',49,'2024-12-30 23:39:16','2024-12-30 23:39:16'),(58,'97z5OoDotCorUVQaT0lhXpQpvWcBA0uLTpetDEeG.png',50,'2024-12-30 23:39:33','2024-12-30 23:39:33'),(59,'ELSmiUPCmn9btQSLJ25yCYGzXFKxHGadeVZbUBhk.png',51,'2024-12-30 23:40:07','2024-12-30 23:40:07'),(60,'tKuBVZTvzbPKJpp8nMxCSklrxCsw7JUH2PJ471Ep.png',52,'2024-12-30 23:40:27','2024-12-30 23:40:27'),(61,'0Dub07MGDPV3MBQuohYZ8yNpKjpf21KL55rrzCOt.png',53,'2024-12-30 23:43:37','2024-12-30 23:43:37'),(62,'QFfToKLCJJBPgxn2T5DdQiO7aSDGXqIpCB0ETJFV.png',54,'2024-12-30 23:44:00','2024-12-30 23:44:00'),(63,'pG3EHq3DdhreoWXjrFdzCKtyIM79D4muhNmLbRCc.png',55,'2024-12-30 23:44:17','2024-12-30 23:44:17'),(64,'ILFCypBq4mK4AwRMMj6Wm6XTtBjzqOpLc9D21uoz.png',56,'2024-12-30 23:44:34','2024-12-30 23:44:34'),(65,'Qvts2ww9uFky9fu8T2cGY4MG73FhyeGgkTstC4bx.png',57,'2024-12-30 23:51:15','2024-12-30 23:51:15'),(66,'XbabkAARS5wGqTkThYDKSolE9coeWDvnfHBuh7i9.png',58,'2024-12-30 23:51:38','2024-12-30 23:51:38'),(67,'ENpvCBZQ11MTzso1DHnOsWhBfQdrtgpAVs6Dqbwf.png',59,'2024-12-30 23:52:12','2024-12-30 23:52:12'),(68,'JftoO9mjdQpnEIpnuUodtTS4pNjFNneXwT3ROadN.png',60,'2024-12-30 23:52:37','2024-12-30 23:52:37'),(69,'4jrgTQX6Gt1UHBHKMGFIrfdbtwphLxw11CryTHMO.png',61,'2024-12-31 03:21:02','2024-12-31 03:21:02');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `totalprice` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_order_id_foreign` (`order_id`),
  KEY `item_product_id_foreign` (`product_id`),
  CONSTRAINT `item_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_09_01_105701_create_categories_table',1),(6,'2024_09_04_181752_create_slider_table',1),(7,'2024_09_05_031739_create_subcategories_table',1),(8,'2024_09_05_052400_create_product_table',1),(9,'2024_09_09_020700_create_image_table',1),(10,'2024_09_09_021219_create_favorite_table',1),(11,'2024_09_12_145626_create_cart_table',1),(12,'2024_09_14_172600_create_order_table',1),(13,'2024_09_15_031644_create_item_table',1),(14,'2024_11_25_142035_create_notification_table',2),(15,'2024_11_28_111550_create_colors_table',3),(16,'2024_12_03_032213_create_carts_table',4),(17,'2024_12_31_112458_create_feedback_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_product_id_foreign` (`product_id`),
  CONSTRAINT `notification_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,8,'2024-11-25 22:51:06','2024-11-25 22:51:06'),(3,10,'2024-11-25 23:19:49','2024-11-25 23:19:49'),(4,11,'2024-11-25 23:21:22','2024-11-25 23:21:22'),(5,12,'2024-11-25 23:48:05','2024-11-25 23:48:05'),(6,13,'2024-12-02 11:33:57','2024-12-02 11:33:57'),(7,14,'2024-12-02 11:34:12','2024-12-02 11:34:12'),(8,15,'2024-12-02 11:34:29','2024-12-02 11:34:29'),(9,16,'2024-12-02 11:34:46','2024-12-02 11:34:46'),(10,17,'2024-12-02 11:35:26','2024-12-02 11:35:26'),(11,18,'2024-12-02 11:35:56','2024-12-02 11:35:56'),(12,19,'2024-12-02 11:38:12','2024-12-02 11:38:12'),(13,20,'2024-12-02 11:38:28','2024-12-02 11:38:28'),(14,21,'2024-12-02 11:38:47','2024-12-02 11:38:47'),(15,22,'2024-12-02 11:39:06','2024-12-02 11:39:06'),(16,23,'2024-12-02 11:39:21','2024-12-02 11:39:21'),(17,24,'2024-12-02 11:39:34','2024-12-02 11:39:34'),(18,25,'2024-12-02 11:39:50','2024-12-02 11:39:50'),(19,26,'2024-12-02 11:40:37','2024-12-02 11:40:37'),(20,27,'2024-12-02 11:40:51','2024-12-02 11:40:51'),(21,28,'2024-12-30 20:08:14','2024-12-30 20:08:14'),(22,29,'2024-12-30 20:13:06','2024-12-30 20:13:06'),(23,30,'2024-12-30 20:33:49','2024-12-30 20:33:49'),(24,31,'2024-12-30 20:40:06','2024-12-30 20:40:06'),(25,41,'2024-12-30 23:28:04','2024-12-30 23:28:04'),(26,42,'2024-12-30 23:28:39','2024-12-30 23:28:39'),(27,43,'2024-12-30 23:29:00','2024-12-30 23:29:00'),(28,44,'2024-12-30 23:30:14','2024-12-30 23:30:14'),(29,45,'2024-12-30 23:30:37','2024-12-30 23:30:37'),(30,46,'2024-12-30 23:31:17','2024-12-30 23:31:17'),(31,47,'2024-12-30 23:31:36','2024-12-30 23:31:36'),(32,48,'2024-12-30 23:32:06','2024-12-30 23:32:06'),(33,49,'2024-12-30 23:39:16','2024-12-30 23:39:16'),(34,50,'2024-12-30 23:39:33','2024-12-30 23:39:33'),(35,51,'2024-12-30 23:40:07','2024-12-30 23:40:07'),(36,52,'2024-12-30 23:40:27','2024-12-30 23:40:27'),(37,53,'2024-12-30 23:43:37','2024-12-30 23:43:37'),(38,54,'2024-12-30 23:44:00','2024-12-30 23:44:00'),(39,55,'2024-12-30 23:44:17','2024-12-30 23:44:17'),(40,56,'2024-12-30 23:44:34','2024-12-30 23:44:34'),(41,57,'2024-12-30 23:51:15','2024-12-30 23:51:15'),(42,58,'2024-12-30 23:51:38','2024-12-30 23:51:38'),(43,59,'2024-12-30 23:52:12','2024-12-30 23:52:12'),(44,60,'2024-12-30 23:52:37','2024-12-30 23:52:37'),(45,61,'2024-12-31 03:21:02','2024-12-31 03:21:02');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `totalprice` double DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_user_id_foreign` (`user_id`),
  CONSTRAINT `order_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'secret','8c88a07342031f19268f49ac724bf63a5678c4409e9dcc0e60b9bc4bf0fbb265','[\"*\"]',NULL,NULL,'2024-11-22 14:33:22','2024-11-22 14:33:22'),(3,'App\\Models\\User',1,'secret','218189a32cf66ecfdc03547dae605b721bfc3f05a93a244d88f22bb84a87c2cb','[\"*\"]','2024-11-22 15:57:25',NULL,'2024-11-22 15:11:48','2024-11-22 15:57:25'),(4,'App\\Models\\User',2,'secret','7505d981d733ce8811619a834964ba4f1f9675747e6a6907d76dc64a8cbe4f72','[\"*\"]',NULL,NULL,'2024-11-23 00:02:57','2024-11-23 00:02:57'),(5,'App\\Models\\User',2,'secret','1475f476cbe7d48c95784b2e8516a6599316362b87cdd04fc67e35818f5e63f2','[\"*\"]',NULL,NULL,'2024-11-23 00:05:18','2024-11-23 00:05:18'),(6,'App\\Models\\User',2,'secret','5a55aad60eeb2778187f7cec7a899693aced9a5897a608108c428a81c912e567','[\"*\"]',NULL,NULL,'2024-11-23 00:49:24','2024-11-23 00:49:24'),(7,'App\\Models\\User',2,'secret','8e143fe3be0d8edeebfa47f59db5d63409807417e85fea4d6e48f500f76889d7','[\"*\"]',NULL,NULL,'2024-11-23 00:59:36','2024-11-23 00:59:36'),(8,'App\\Models\\User',2,'secret','78ab2a361e3f9df6a4c532ac36d78b7144484e0d5ba2c8129721ce221c79e7eb','[\"*\"]','2024-11-23 10:08:43',NULL,'2024-11-23 01:20:55','2024-11-23 10:08:43'),(9,'App\\Models\\User',2,'secret','73c593da1c47c439e007ab7c41751fc6b97227e690b43dee48cce7fd076993d5','[\"*\"]','2024-11-23 10:11:34',NULL,'2024-11-23 10:11:33','2024-11-23 10:11:34'),(10,'App\\Models\\User',2,'secret','e52759ed0f3554ca84d005d7336459a4c3bca43ad979b9cfa4144dd729afbf13','[\"*\"]','2024-11-23 10:12:41',NULL,'2024-11-23 10:12:40','2024-11-23 10:12:41'),(11,'App\\Models\\User',2,'secret','f1917d5fdce367c9910210707f498e9178aea734bc22603735428cfb258ee8ff','[\"*\"]','2024-11-23 19:16:37',NULL,'2024-11-23 10:12:58','2024-11-23 19:16:37'),(12,'App\\Models\\User',2,'secret','a726753f850f086d06e05d30c812a2aa3ee2eef5d54c710ba69d2c0728c3e268','[\"*\"]','2024-12-30 01:59:12',NULL,'2024-11-23 19:23:17','2024-12-30 01:59:12'),(13,'App\\Models\\User',2,'secret','deba8dc0b09c019ff9c834ec5409481c52340a13d00d85cb20fa2f3a752ce7b8','[\"*\"]','2024-11-23 23:25:28',NULL,'2024-11-23 19:31:45','2024-11-23 23:25:28'),(14,'App\\Models\\User',2,'secret','abf1170a259c4e5645c92ea37287dd1d638758a4194626bcde2fcc27d5b16236','[\"*\"]','2024-11-25 20:18:50',NULL,'2024-11-23 23:26:35','2024-11-25 20:18:50'),(15,'App\\Models\\User',2,'secret','3f32e9dbe721ca6d77e3af537663b6f2c5ac3abde19b91d42c605702c6de3c87','[\"*\"]','2024-11-25 11:17:03',NULL,'2024-11-24 18:51:28','2024-11-25 11:17:03'),(16,'App\\Models\\User',2,'secret','343960afc50611ea57a9287df26a319db10c37ec00443df77a8a112ce76c2779','[\"*\"]','2024-11-30 10:22:01',NULL,'2024-11-25 11:17:08','2024-11-30 10:22:01'),(17,'App\\Models\\User',2,'secret','a50a0f87d200247f9990622672ae6c6b6accd3d53bc80e635a307e71dc50ceb9','[\"*\"]','2024-11-25 20:38:48',NULL,'2024-11-25 20:38:37','2024-11-25 20:38:48'),(18,'App\\Models\\User',3,'secret','237ee7c2bbfe393d9df301607152db0c685d3a8f3f1ccea07c10250f910d603c','[\"*\"]',NULL,NULL,'2024-11-25 20:44:33','2024-11-25 20:44:33'),(19,'App\\Models\\User',4,'secret','02961e5dcc5c7b3eb8da06168725394cd753f87657a612c8747674b928818043','[\"*\"]',NULL,NULL,'2024-11-25 20:46:24','2024-11-25 20:46:24'),(20,'App\\Models\\User',4,'secret','40e157c6b696bf030f4a56729fefc16a8b817650f2fc4a0d46f1b36dcf3af1d7','[\"*\"]','2024-11-25 20:46:48',NULL,'2024-11-25 20:46:39','2024-11-25 20:46:48'),(21,'App\\Models\\User',2,'secret','c372b8c6186e81ab9890ee9c001f24b14289f9b29f2cad4853889063e56a52db','[\"*\"]','2024-11-25 20:48:13',NULL,'2024-11-25 20:47:44','2024-11-25 20:48:13'),(22,'App\\Models\\User',2,'secret','fe47bad44c66581f3acd320c5ce6d133ef809a155c0b73a83280f5f3dceb5ab5','[\"*\"]','2024-11-25 20:52:08',NULL,'2024-11-25 20:51:31','2024-11-25 20:52:08'),(23,'App\\Models\\User',2,'secret','bb9cfbda15103c8470ba1e793f2c1ce744b0bf5cb9b9df47053a957afbb21fe3','[\"*\"]','2024-11-25 23:54:40',NULL,'2024-11-25 20:53:27','2024-11-25 23:54:40'),(24,'App\\Models\\User',2,'secret','495b0d76eaa818709e73d9f1249f7542150ee9d4f698f2c17c136374b71c2ab3','[\"*\"]','2024-11-25 23:55:26',NULL,'2024-11-25 23:55:25','2024-11-25 23:55:26'),(25,'App\\Models\\User',2,'secret','3ad26873c7a6e4de217f80f6310f68a31e455c0ca752855039c91477692f2698','[\"*\"]','2024-11-25 23:56:24',NULL,'2024-11-25 23:56:22','2024-11-25 23:56:24'),(26,'App\\Models\\User',2,'secret','868cb91a007d8a3bb2b0e4c969d29ac8880c184482247b87b9c7f7cd9d08ab62','[\"*\"]','2024-11-25 23:59:35',NULL,'2024-11-25 23:56:23','2024-11-25 23:59:35'),(27,'App\\Models\\User',2,'secret','b1c4139b93c6d38e4672f6baef48e7115156176537c7b23879fa55e6f10d663f','[\"*\"]','2024-11-26 00:00:14',NULL,'2024-11-26 00:00:12','2024-11-26 00:00:14'),(28,'App\\Models\\User',2,'secret','2d08e8900c15309580c1be808937486379658327bd514005f0c95a9d92f373dc','[\"*\"]','2024-11-26 00:01:16',NULL,'2024-11-26 00:00:45','2024-11-26 00:01:16'),(29,'App\\Models\\User',3,'secret','17bf935635d85f1afec6a4b9b3972b83e589d7687631262d6e61018107d691a9','[\"*\"]','2024-11-27 09:16:17',NULL,'2024-11-26 20:40:54','2024-11-27 09:16:17'),(30,'App\\Models\\User',3,'secret','b789415a0d8f48594caf40fdedacd161b587e859fdab83f783057cb5299d3d06','[\"*\"]','2024-11-27 09:19:08',NULL,'2024-11-27 09:16:30','2024-11-27 09:19:08'),(31,'App\\Models\\User',3,'secret','7e1632e058a9d28fb93ec09832fe1fe712ac83396204e50c81f04baaafffe3c7','[\"*\"]','2024-12-02 20:25:00',NULL,'2024-11-27 09:19:38','2024-12-02 20:25:00'),(32,'App\\Models\\User',3,'secret','f4995dee9e1aa8a0ba768cb6a08cc2f22e3e94e77429f069eb1ee3c3441a3282','[\"*\"]','2024-12-03 12:09:49',NULL,'2024-12-02 12:47:40','2024-12-03 12:09:49'),(33,'App\\Models\\User',3,'secret','968cb177bbd081d2fca34be6780d429c27561f04e19f49f852c41a618e15f853','[\"*\"]','2024-12-29 03:02:37',NULL,'2024-12-02 20:24:58','2024-12-29 03:02:37'),(34,'App\\Models\\User',3,'secret','e9d70bffb36d8ca34a959979bc8be94ed7a68241cdb724a750e5fe2b7a77c2f5','[\"*\"]','2024-12-29 18:11:58',NULL,'2024-12-29 02:16:59','2024-12-29 18:11:58'),(35,'App\\Models\\User',3,'secret','8c2110e7d036620cf38f04997546e23f55bb8afd6c0d1e6cc8a561d36be41013','[\"*\"]','2024-12-29 20:22:28',NULL,'2024-12-29 02:45:59','2024-12-29 20:22:28'),(36,'App\\Models\\User',3,'secret','4a9dc6f67a974de2c7b8f578e69a49f3e8398e854935ce244fbf0af214a5bae8','[\"*\"]','2024-12-29 20:13:32',NULL,'2024-12-29 17:41:51','2024-12-29 20:13:32'),(37,'App\\Models\\User',5,'secret','ee485867a405e4208f7ae5059c32345f168872899a0713e9fac69fb6e84606f0','[\"*\"]',NULL,NULL,'2024-12-29 20:12:18','2024-12-29 20:12:18'),(38,'App\\Models\\User',5,'secret','8ee5ebe48915e4d85206190e8264c45863d9915a69f25729f03744d51f3df03e','[\"*\"]','2024-12-29 20:12:58',NULL,'2024-12-29 20:12:35','2024-12-29 20:12:58'),(39,'App\\Models\\User',3,'secret','283af18fded6a975bacfec997a15c16fd45a44f91ac34d9558b8399d068dceca','[\"*\"]','2024-12-29 20:13:23',NULL,'2024-12-29 20:13:18','2024-12-29 20:13:23'),(40,'App\\Models\\User',3,'secret','c1be4025f8f4d4106a809daaaa2cf5fb7dfcde1a98d0321d9f61bbfc682e5bd5','[\"*\"]','2024-12-29 20:19:26',NULL,'2024-12-29 20:15:26','2024-12-29 20:19:26'),(41,'App\\Models\\User',5,'secret','632a6aa4d02c3ce66ea4001498f0db90969ec9991eaa5b0bd7e2df44aba532c6','[\"*\"]','2024-12-29 20:15:55',NULL,'2024-12-29 20:15:53','2024-12-29 20:15:55'),(42,'App\\Models\\User',5,'secret','2c5ab10055752e45e97711151f2c0af24cdab9c11041f4b2d2233a0855dbfffb','[\"*\"]','2024-12-29 20:20:10',NULL,'2024-12-29 20:18:18','2024-12-29 20:20:10'),(43,'App\\Models\\User',5,'secret','b8c2e1335c17bfcfd44ee5e15d3b644a915852cfae90f89c494b9185ef893368','[\"*\"]','2024-12-29 20:24:40',NULL,'2024-12-29 20:19:18','2024-12-29 20:24:40'),(44,'App\\Models\\User',3,'secret','48848f95999647be3beb7c7271029ac18c0b66dd19d6a4f04151f42bb2de933b','[\"*\"]','2024-12-29 20:25:33',NULL,'2024-12-29 20:23:09','2024-12-29 20:25:33'),(45,'App\\Models\\User',5,'secret','49ace0e6e1992ba7d858068e7211b28beaef0954aab18a2d9d9a8c92df7576c4','[\"*\"]','2024-12-29 20:28:38',NULL,'2024-12-29 20:25:31','2024-12-29 20:28:38'),(46,'App\\Models\\User',3,'secret','2ddc862b46895e6e53d431411fb35044e0de30f28b5aca0ed0e4b32bd296b987','[\"*\"]','2024-12-29 20:29:48',NULL,'2024-12-29 20:27:42','2024-12-29 20:29:48'),(47,'App\\Models\\User',5,'secret','6a3db848be76893c8aa74e52cd786d9821cacef0417343c5ede4673ce0cd938f','[\"*\"]','2024-12-29 20:30:47',NULL,'2024-12-29 20:30:19','2024-12-29 20:30:47'),(48,'App\\Models\\User',3,'secret','43d7bd7649e5b6374f20bbdb9b3b585847d54b3103006d2f517715a155c74eae','[\"*\"]','2024-12-29 20:31:21',NULL,'2024-12-29 20:30:57','2024-12-29 20:31:21'),(49,'App\\Models\\User',3,'secret','5dc6833e8f0e9cce9044d26e82c3adc3df4c7739f2e608048b7456b62ff345c3','[\"*\"]','2024-12-29 20:31:58',NULL,'2024-12-29 20:31:32','2024-12-29 20:31:58'),(50,'App\\Models\\User',5,'secret','2c7f9a5d83aeebf1178d82ec9f8c2cb242c0c0c60703574fee2841814598c9d2','[\"*\"]','2024-12-29 20:34:36',NULL,'2024-12-29 20:33:23','2024-12-29 20:34:36'),(51,'App\\Models\\User',3,'secret','5a19b50b495da00e2cfea459af6b754602629e0bdb7d1ebb23c5b8550bab98d8','[\"*\"]','2024-12-29 20:35:06',NULL,'2024-12-29 20:34:47','2024-12-29 20:35:06'),(52,'App\\Models\\User',5,'secret','28ea829a672626a6722c7ed222ad8b94853bcef6a361c5434ddef37396b9187f','[\"*\"]','2024-12-29 20:36:28',NULL,'2024-12-29 20:35:37','2024-12-29 20:36:28'),(53,'App\\Models\\User',3,'secret','2efc7ef295ac31e91b70e921a81edd2737808d8b694a9fee8d27187e24772fb4','[\"*\"]','2024-12-29 20:40:47',NULL,'2024-12-29 20:36:38','2024-12-29 20:40:47'),(54,'App\\Models\\User',3,'secret','aef008e313f8dd077dad40e4695054d6761f81ccbeaafca9212838d342c4c2a5','[\"*\"]','2024-12-29 20:45:51',NULL,'2024-12-29 20:42:17','2024-12-29 20:45:51'),(55,'App\\Models\\User',3,'secret','ebd7e765762eed090c75e7e91f15e12b6c4ff325693416f4e98c5db366946889','[\"*\"]','2024-12-31 10:02:33',NULL,'2024-12-29 20:46:13','2024-12-31 10:02:33'),(56,'App\\Models\\User',3,'secret','bdf3695d877d5b815f22e07c779b7ae672416dff998029889d257f48090946dc','[\"*\"]','2024-12-31 09:14:01',NULL,'2024-12-31 07:28:12','2024-12-31 09:14:01'),(57,'App\\Models\\User',5,'secret','0d160cd8b6de7110356c7802e88db5b84141882ac2eded001ea5d3f681cf1396','[\"*\"]','2024-12-31 12:21:15',NULL,'2024-12-31 10:02:53','2024-12-31 12:21:15'),(58,'App\\Models\\User',3,'secret','4d1ed3f3e8db4955c98c6f475abf31740f5ffe21c98020b40afdf7b7ba7473ae','[\"*\"]','2024-12-31 12:30:32',NULL,'2024-12-31 12:29:06','2024-12-31 12:30:32'),(59,'App\\Models\\User',5,'secret','edf281e90cafc50cf477d90fc4aafe4498940aff9d28f9d1b447b8640a0d6325','[\"*\"]','2024-12-31 12:35:19',NULL,'2024-12-31 12:30:43','2024-12-31 12:35:19'),(60,'App\\Models\\User',6,'secret','6a7fe5183c54ffe269bccf3bff540d9baa9e0ab26cd04a6c243c7a68dfa04305','[\"*\"]',NULL,NULL,'2024-12-31 12:35:57','2024-12-31 12:35:57'),(61,'App\\Models\\User',6,'secret','7c6c121f3bc55eaeafe4c5a1885e1897ac8b0d0eeda44ef1d7010f5dfd92d9f2','[\"*\"]','2024-12-31 12:44:44',NULL,'2024-12-31 12:36:06','2024-12-31 12:44:44'),(62,'App\\Models\\User',3,'secret','157c6d78453b09aca5f583b3ddaba9ca9b3b32a143dcdf388737d7510e7da2ad','[\"*\"]',NULL,NULL,'2024-12-31 20:29:13','2024-12-31 20:29:13'),(63,'App\\Models\\User',3,'secret','2416d3418ad2dd4654e4b430e5db11d1bc6cd15490d2e917609c767f9d32bfa1','[\"*\"]',NULL,NULL,'2024-12-31 20:45:29','2024-12-31 20:45:29'),(64,'App\\Models\\User',3,'secret','ed6945888a97031dc2fbab370aa36be2698e0a165396cf227c39aa2203df1217','[\"*\"]',NULL,NULL,'2024-12-31 20:45:33','2024-12-31 20:45:33'),(65,'App\\Models\\User',3,'secret','5b28fd0f968de9b3aaf886177390e1506e80cf0556b8cedbe99f305817f65608','[\"*\"]','2024-12-31 20:59:31',NULL,'2024-12-31 20:45:58','2024-12-31 20:59:31'),(66,'App\\Models\\User',3,'secret','0317036bb05bba80a0dc36294cfe3e5b82cc6aedcf636c60ef790da2700509e5','[\"*\"]',NULL,NULL,'2024-12-31 20:49:17','2024-12-31 20:49:17'),(67,'App\\Models\\User',3,'secret','8ea62245f4b7a5122e5f7d60a9d9653ccfe7a5e5328bc1f9a826eca9a294d9db','[\"*\"]',NULL,NULL,'2024-12-31 20:49:20','2024-12-31 20:49:20'),(68,'App\\Models\\User',3,'secret','bf8619729a3a465ecb0a94acc502346612fe53e515f23167b60fcdb2c074bea2','[\"*\"]',NULL,NULL,'2024-12-31 20:49:21','2024-12-31 20:49:21'),(69,'App\\Models\\User',3,'secret','1bc000423bb30e27a80b6d272cf2a39d1e2bbac2a8771929c94ed2d71b488c0a','[\"*\"]',NULL,NULL,'2024-12-31 20:49:22','2024-12-31 20:49:22'),(70,'App\\Models\\User',3,'secret','3bf0acbfbd692796b31aadfcf0def2fbcae1bd0810eda98dcf6babb16931adaa','[\"*\"]',NULL,NULL,'2024-12-31 20:49:23','2024-12-31 20:49:23'),(71,'App\\Models\\User',3,'secret','91ccef4a040e339c7093531e85701739167cf330d3ffad2974610a51b5c7e962','[\"*\"]',NULL,NULL,'2024-12-31 20:49:25','2024-12-31 20:49:25'),(72,'App\\Models\\User',3,'secret','1ed467e0fe1a5d3500aa6cdf44da3383babe6821cab35dd5da8d2b11fc1c4912','[\"*\"]',NULL,NULL,'2024-12-31 20:49:26','2024-12-31 20:49:26'),(73,'App\\Models\\User',3,'secret','bf47b402fd5d448a92bab509cd0def40b9732bf92b5186753b3d03c3aaa8ee72','[\"*\"]',NULL,NULL,'2024-12-31 20:49:27','2024-12-31 20:49:27'),(74,'App\\Models\\User',3,'secret','e3150b6306bbfe45d719e04e66352b7c0893264ee642491887cc841f9573bc26','[\"*\"]',NULL,NULL,'2024-12-31 20:49:28','2024-12-31 20:49:28'),(75,'App\\Models\\User',3,'secret','276278e5804e1d376535134779c0d9a009cd954d0c12d549b3a019f87ccbc9ca','[\"*\"]',NULL,NULL,'2024-12-31 20:49:34','2024-12-31 20:49:34'),(76,'App\\Models\\User',3,'secret','c098a8f3cfe6632d3bfadd1a502dd652bc7760aa1c9756c8d60ec32553098b92','[\"*\"]',NULL,NULL,'2024-12-31 20:49:36','2024-12-31 20:49:36'),(77,'App\\Models\\User',3,'secret','e49bd9481457325120fff2ab2354e94be0aa4d146126881507943725009d9708','[\"*\"]',NULL,NULL,'2024-12-31 20:49:38','2024-12-31 20:49:38'),(78,'App\\Models\\User',3,'secret','202a760c03eb7f26198adf3bf27c18a13f32fa3fdbcd8b37a89d5f10de726273','[\"*\"]',NULL,NULL,'2024-12-31 20:49:40','2024-12-31 20:49:40'),(79,'App\\Models\\User',3,'secret','2f4c16f6ae10b4c4d0584e224fde490e7458ab6e8aca1e7171ea57d87e30cc32','[\"*\"]',NULL,NULL,'2024-12-31 20:49:41','2024-12-31 20:49:41'),(80,'App\\Models\\User',3,'secret','5774439a9e15f50053305d50eec40cd9159e30fc3cc0434f94eed155aa5b9e23','[\"*\"]',NULL,NULL,'2024-12-31 20:49:59','2024-12-31 20:49:59'),(81,'App\\Models\\User',3,'secret','ebd09e41ac57cb65c137df6d221f2d84b5e5f4f62b73ca5bb63e498752cbfb4e','[\"*\"]',NULL,NULL,'2024-12-31 20:50:01','2024-12-31 20:50:01'),(82,'App\\Models\\User',3,'secret','44d77a5e0d53b82e4dca5d9f4cad80f18aca7f35964d1ef87ba7aff03ec983d6','[\"*\"]',NULL,NULL,'2024-12-31 20:50:02','2024-12-31 20:50:02'),(83,'App\\Models\\User',3,'secret','92d71c08bab1770c4abb4a71c33d12c86505a3e8ad367e4ca7666e369dcb0c3c','[\"*\"]',NULL,NULL,'2024-12-31 20:50:05','2024-12-31 20:50:05'),(84,'App\\Models\\User',3,'secret','f1b84f01abf12cc34ac19bfe36f7d03328fa71f9439ce5d0afeec5f8afea96cc','[\"*\"]',NULL,NULL,'2024-12-31 20:51:09','2024-12-31 20:51:09'),(85,'App\\Models\\User',3,'secret','bce5e645e122e592aed6a175b37131816cfa026e6fedf20a9a3f0a7a3e4f9f36','[\"*\"]',NULL,NULL,'2024-12-31 20:51:57','2024-12-31 20:51:57'),(86,'App\\Models\\User',3,'secret','56dcb03b397312cb77ea934b666f59d3a14c9ba375118ef796c019b2d485750c','[\"*\"]','2024-12-31 20:59:54',NULL,'2024-12-31 20:59:43','2024-12-31 20:59:54'),(87,'App\\Models\\User',3,'secret','09ea6abe2599291ebfe48d17452abb94e593bf530612b2c10e33383e0661cea2','[\"*\"]','2024-12-31 21:03:44',NULL,'2024-12-31 21:02:31','2024-12-31 21:03:44'),(88,'App\\Models\\User',7,'secret','8a92016839ca98bde441e123b8ace240eb25b0c84a955dcda8c635d398e78d00','[\"*\"]',NULL,NULL,'2024-12-31 21:10:39','2024-12-31 21:10:39'),(89,'App\\Models\\User',7,'secret','17148ccb5168b81d886b6b09a2ae6cc3cd7a7b9855abd1157befb69e2ea0e7fd','[\"*\"]','2024-12-31 21:18:56',NULL,'2024-12-31 21:18:10','2024-12-31 21:18:56'),(90,'App\\Models\\User',3,'secret','b500fec94f5ffe7750e50f474b8a1daf0b90b5a29b0cf495a40beffa2425ea74','[\"*\"]','2024-12-31 22:48:08',NULL,'2024-12-31 21:22:38','2024-12-31 22:48:08'),(91,'App\\Models\\User',3,'secret','f70fa4a97fc957d183781ab3ad7d1d05396f5a088e4ee88d74a65c53137e2bf8','[\"*\"]','2024-12-31 22:04:23',NULL,'2024-12-31 21:59:11','2024-12-31 22:04:23'),(92,'App\\Models\\User',3,'secret','3ad289e82b3987c2c57e2398d2017bf858088adb8fce0c87fa17af1aeac91168','[\"*\"]','2024-12-31 22:08:05',NULL,'2024-12-31 22:04:28','2024-12-31 22:08:05'),(93,'App\\Models\\User',8,'secret','ced827f144d18ac2210c4c417ecc6810a52ddaaf240a28845fd2071c8bb6afa2','[\"*\"]',NULL,NULL,'2024-12-31 22:50:40','2024-12-31 22:50:40'),(94,'App\\Models\\User',8,'secret','955a154f2a2c9d54c7511045936e0022dc118418c3859e3e57f7e86ad7da020e','[\"*\"]','2024-12-31 22:59:36',NULL,'2024-12-31 22:51:01','2024-12-31 22:59:36'),(95,'App\\Models\\User',3,'secret','0f3962319ed868a8d1887da634c308bf56e18ac434bc0e18b088a95a0d35a2a7','[\"*\"]','2024-12-31 23:00:14',NULL,'2024-12-31 22:59:47','2024-12-31 23:00:14'),(96,'App\\Models\\User',2,'secret','a427c461f41e22360063a0f7e7b18c501d26d5db07b9e58bd01424c51f6ab973','[\"*\"]','2024-12-31 23:04:48',NULL,'2024-12-31 23:00:49','2024-12-31 23:04:48'),(97,'App\\Models\\User',2,'secret','af2a92e88a30b99cfbaf9943eee77e9cf832a7f72191b1ede0eccfae8802d984','[\"*\"]','2024-12-31 23:06:03',NULL,'2024-12-31 23:06:00','2024-12-31 23:06:03'),(98,'App\\Models\\User',3,'secret','8e3b36c7c89b886465efe2e3f52234d0dab2838d3b22b56b0ef30fb82eb170ee','[\"*\"]','2024-12-31 23:07:08',NULL,'2024-12-31 23:06:52','2024-12-31 23:07:08'),(99,'App\\Models\\User',2,'secret','b9cba20704b52f4b1dd2edc2d3f1771de492cc540bb596a1acbf62ca98ca4725','[\"*\"]','2024-12-31 23:08:19',NULL,'2024-12-31 23:07:21','2024-12-31 23:08:19'),(100,'App\\Models\\User',3,'secret','8efe6a3a3b27a5f30bf0e74c9726a8691f0a33c67ffa1d2457952fa6dd767f2a','[\"*\"]','2025-01-01 07:28:38',NULL,'2024-12-31 23:10:06','2025-01-01 07:28:38');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `subcategories_id` int NOT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_subcategories_id_foreign` (`subcategories_id`),
  CONSTRAINT `product_subcategories_id_foreign` FOREIGN KEY (`subcategories_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Wireless Headphones','import \'package:cuberto_bottom_bar/internal/cuberto_bottom_bar.dart\';',100,20,1,1,'2024-11-22 15:19:35','2024-11-24 11:34:40'),(2,'Woman Sweter','import \'package:cuberto_bottom_bar/internal/cuberto_bottom_bar.dart\';',1222,3,19,1,'2024-11-22 15:20:06','2024-12-31 03:12:05'),(3,'Smart Watch1','import \'package:cuberto_bottom_bar/internal/cuberto_bottom_bar.dart\';',1222,2,14,1,'2024-11-22 15:20:40','2024-12-31 02:59:31'),(4,'Mens Jacket1','import \'package:cuberto_bottom_bar/internal/cuberto_bottom_bar.dart\';',1222,3,10,1,'2024-11-22 15:20:58','2024-12-31 02:50:05'),(5,'Smart Watch','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,2,2,1,'2024-11-25 11:30:30','2024-11-25 11:30:30'),(8,'Mens Jacket','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,2,11,1,'2024-11-25 22:51:06','2024-12-31 02:52:21'),(10,'Mens Jacket','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,2,11,1,'2024-11-25 23:19:49','2024-12-31 02:52:26'),(11,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,2,10,1,'2024-11-25 23:21:22','2024-12-31 02:50:21'),(12,'Lorem ipsum dolor sit amet,','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,2,12,1,'2024-11-25 23:48:05','2024-12-31 02:55:41'),(13,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,2,19,1,'2024-12-02 11:33:57','2024-12-31 03:12:12'),(14,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,2,1,1,'2024-12-02 11:34:12','2024-12-02 20:20:22'),(15,'Wireless Headphones','eeeeee',100,3,11,1,'2024-12-02 11:34:29','2024-12-31 02:53:08'),(16,'Wireless Headphones','eeeeee',100,3,14,1,'2024-12-02 11:34:46','2024-12-31 02:59:46'),(17,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',12222,2,10,1,'2024-12-02 11:35:26','2024-12-31 02:52:58'),(18,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,3,1,1,'2024-12-02 11:35:56','2024-12-02 20:21:34'),(19,'ssssssss','sssssssssssss',100,3,1,1,'2024-12-02 11:38:12','2024-12-02 11:38:12'),(20,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,2,11,1,'2024-12-02 11:38:28','2024-12-31 02:52:46'),(21,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,2,11,1,'2024-12-02 11:38:47','2024-12-31 02:52:39'),(22,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,1,10,1,'2024-12-02 11:39:06','2024-12-31 02:50:41'),(23,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,2,1,1,'2024-12-02 11:39:21','2024-12-02 20:20:52'),(24,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,3,12,1,'2024-12-02 11:39:34','2024-12-31 02:56:14'),(25,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',1222,3,19,1,'2024-12-02 11:39:50','2024-12-31 03:12:24'),(26,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',1222,2,13,1,'2024-12-02 11:40:37','2024-12-31 02:58:01'),(27,'Wireless Headphones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',100,2,1,1,'2024-12-02 11:40:51','2024-12-02 20:21:54'),(28,'Laptop Dell XPS 13-9350','Laptop Dell XPS 13 9360 Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1 PC Computer, Laptop, gadget',600,10,5,1,'2024-12-30 20:08:14','2024-12-30 20:08:53'),(29,'Laptop Dell XPS 13 9360','Laptop Dell XPS 13 9360 Kaby Lake Intel, Laptop, electronics, netbook, computer png · Logo Business Cube Organization, others, blue, angle, text png · Laptop Dell Inspiron Intel Core i5, Laptop, electronics',600,10,5,1,'2024-12-30 20:13:06','2024-12-30 20:13:06'),(30,'Dell XPS 13 9370 Laptop Intel','Dell XPS 9370 Laptop, 13.3\" UHD (3840 x 2160) InfinityEdge Touch Display, 8th Gen Intel Core i7-8550U, 16GB RAM, 512 GB SSD, Windows 10',600,10,5,1,'2024-12-30 20:33:49','2024-12-30 20:33:49'),(31,'Laptop Intel HP Envy Hewlett-Packard 2-in-1 PC','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',500,10,6,1,'2024-12-30 20:40:06','2024-12-30 20:40:06'),(41,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,10,5,1,'2024-12-30 23:28:04','2024-12-30 23:28:04'),(42,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,10,5,1,'2024-12-30 23:28:39','2024-12-30 23:28:39'),(43,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,10,5,1,'2024-12-30 23:29:00','2024-12-30 23:29:00'),(44,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,10,6,1,'2024-12-30 23:30:14','2024-12-30 23:30:14'),(45,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,10,6,1,'2024-12-30 23:30:37','2024-12-30 23:30:37'),(46,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,10,6,1,'2024-12-30 23:31:17','2024-12-30 23:31:17'),(47,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,10,6,1,'2024-12-30 23:31:36','2024-12-30 23:31:36'),(48,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,10,6,1,'2024-12-30 23:32:06','2024-12-30 23:32:06'),(49,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,1,7,1,'2024-12-30 23:39:16','2024-12-30 23:39:16'),(50,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,1,7,1,'2024-12-30 23:39:33','2024-12-30 23:39:33'),(51,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,1,7,1,'2024-12-30 23:40:07','2024-12-30 23:40:07'),(52,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,1,7,1,'2024-12-30 23:40:27','2024-12-30 23:40:27'),(53,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,1,8,1,'2024-12-30 23:43:37','2024-12-30 23:43:37'),(54,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,1,8,1,'2024-12-30 23:44:00','2024-12-30 23:44:00'),(55,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,1,8,1,'2024-12-30 23:44:17','2024-12-30 23:44:17'),(56,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,1,8,1,'2024-12-30 23:44:34','2024-12-30 23:44:34'),(57,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,1,9,1,'2024-12-30 23:51:15','2024-12-30 23:51:15'),(58,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,1,9,1,'2024-12-30 23:51:38','2024-12-30 23:51:38'),(59,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,1,9,1,'2024-12-30 23:52:12','2024-12-30 23:52:12'),(60,'Laptop Dell XPS 13 9360','Kaby Lake ... netbook png · Laptop Dell XPS Intel MacBook Pro, Laptop, television, electronics png   · Laptop Dell Inspiron Intel Core i5, Laptop, electronics, computer png · Dell XPS Laptop 2-in-1  PC Computer, Laptop, gadget',600,1,9,1,'2024-12-30 23:52:37','2024-12-30 23:52:37'),(61,'Coca-Cola Fizzy Drinks Diet Coke Fanta','Coca-Cola Fizzy Drinks Diet Coke Fanta, coca cola, food, cola, beverage Can png free download',2,1,22,1,'2024-12-31 03:21:02','2024-12-31 03:21:02');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (1,'Mark','VPQ799hZSNvE9WhnGqYWUZRscL25tu9H8gcbhlhD.png',1,'2024-11-22 15:05:12','2024-11-25 23:34:29'),(2,'Mark','L78N1rCoav1DN6GsvcIySEPvUwRU7RDeXOUxMQMC.png',1,'2024-11-22 15:56:58','2024-11-25 23:34:34'),(3,'Mark','hgk2gt3vDBNXhwNpS8aOO6QtoUuCQQ3M1mNBUJbJ.jpg',1,'2024-11-23 22:35:59','2024-11-25 23:34:39'),(4,'Mark','uwxe1bM0lL9p9e9AIGWBu8mLHlATdVO8CQr2Jvs0.jpg',1,'2024-11-23 22:37:16','2024-11-25 23:34:44');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `categories_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategories_categories_id_foreign` (`categories_id`),
  CONSTRAINT `subcategories_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,'Mark1','ctZ5lDt2YCCNXwzBEwudZR1bTbO5buDljOuu5ufx.png',1,1,'2024-11-22 15:17:52','2024-12-30 08:30:23'),(2,'Mark2','gOAgRYVoXgyPIw5Vs7Wl15l8FujHxSRlmVbjQcGL.png',1,1,'2024-11-22 15:18:05','2024-12-30 08:30:35'),(5,'Dell','6X9GjO7o6DvNcSrkQHmiQ32vKH3uqTGUGLOW76Ko.png',1,12,'2024-12-30 08:40:54','2024-12-30 08:40:54'),(6,'HP','f2dbw5RaPBc7o9v9YXGCBPo7iFI4axZCJrGqvXtu.png',1,12,'2024-12-30 08:43:10','2024-12-30 08:43:10'),(7,'Asus','53weE6KIp6ZfuIjlJ9UkNiMsOxpXWlftEeAqjYLi.png',1,12,'2024-12-30 08:43:25','2024-12-30 08:43:25'),(8,'Apple','2ZVyS5TF7gxJ0GaLUylkiWIvdbUDe45K8dedUuso.png',1,12,'2024-12-30 08:43:39','2024-12-30 08:43:39'),(9,'SAMSUNG','Cv5UuAk0mRxqBeNdxY6kaat9RU0wxcruIWoYe0Zw.png',1,12,'2024-12-30 08:44:16','2024-12-30 08:45:14'),(10,'Man','PEgyGkF0oqpCOvlg3x3358ug1NGA0uJwKcusVNie.png',1,3,'2024-12-31 02:49:40','2024-12-31 02:49:40'),(11,'Woman','1TED9T2Bv7K49l1TB3rlG37Kj51Sl5YV8wWe0u7H.png',1,3,'2024-12-31 02:52:01','2024-12-31 02:52:01'),(12,'Smart Watch','pbMkQgpTfEQqAIKcEMQd4gtY65TLnCG77EYTgKg3.jpg',1,14,'2024-12-31 02:55:22','2024-12-31 02:55:22'),(13,'Air port','uzf4COdwrxqVXReo2I22t1gs0Px02mEdmbo2cUFM.png',1,14,'2024-12-31 02:57:34','2024-12-31 02:57:34'),(14,'Care','a8tPmG76FqEYec6hnOETMBj0G5CLMVCemAAzIWfG.png',1,2,'2024-12-31 02:59:19','2024-12-31 02:59:19'),(15,'Apple','xsNDZcofXDLheFvXSFED6hhfuEEjCpV5ugfrEOwK.png',1,13,'2024-12-31 03:01:27','2024-12-31 03:01:27'),(16,'Samsung','xyEqp3e7afhcnLawox7gqWtNNLiASFQRzhr56EBw.png',1,13,'2024-12-31 03:01:44','2024-12-31 03:01:44'),(17,'Oppo','wMRzOOn7Pnuv4rfmgiReTNQgcnUVvVHk2sqGWgHu.png',1,13,'2024-12-31 03:02:02','2024-12-31 03:02:02'),(18,'Vivo','QUuBSrZuyvqFMsNZVONh1Ue3FusPf7SUe9S0x3BQ.png',1,13,'2024-12-31 03:02:15','2024-12-31 03:02:15'),(19,'Ring','UQ0M29Wq7JEvbmJA3vVNdwTk6iNyNRhiklJK0yFY.png',1,15,'2024-12-31 03:11:53','2024-12-31 03:11:53'),(20,'Cat Feed','32uGstqeQzUWQdYG8Tg7S3CnBxF518wy90QwYIcQ.png',1,10,'2024-12-31 03:15:50','2024-12-31 03:15:50'),(21,'Dog Feed','gv01MHbBUDMGkZf7ZVWc10VPc4Axna5ygkWX1aga.png',1,10,'2024-12-31 03:16:41','2024-12-31 03:16:41'),(22,'Coca-Cola','Rqpw6QWgxi9cdPGhX8LeT9AHnikK0SrGmPDlFfSv.png',1,6,'2024-12-31 03:19:47','2024-12-31 03:19:47');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'zxcvbnm','0716307354','0','somveha.122@gmail.com','DlZc9JaWgxUNotnEl6VjmgxxbvZudmxthsByV67C.jpg','House 1200, Street 3, Sangkat Boeung Keng Kang 2, Phnom Penh, Phnom Penh Province',NULL,'$2y$12$GhsCBbCmp75dF9oNmdTvmeca2AoJbVbQGyY5qHNXFoH4A3FGWaj8S',NULL,'2024-11-25 20:44:33','2024-12-31 23:23:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-01 22:00:04
