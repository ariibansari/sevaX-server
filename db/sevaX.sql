-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: donateup
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `needy`
--

DROP TABLE IF EXISTS `needy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `needy` (
  `needy_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `isHeadOfFamily` tinyint(1) NOT NULL,
  `sourceOfIncome` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `noOfFamilyMembers` int NOT NULL,
  `yearlyIncome` int NOT NULL,
  `rationCardSrc` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `isVerified` tinyint(1) NOT NULL DEFAULT '0',
  `totalEarningMembersInFamily` int NOT NULL,
  PRIMARY KEY (`needy_id`),
  KEY `needy_user_FK_idx` (`user_id`),
  CONSTRAINT `needy_user_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `needy`
--

LOCK TABLES `needy` WRITE;
/*!40000 ALTER TABLE `needy` DISABLE KEYS */;
INSERT INTO `needy` VALUES (2,12,1,'Job',5,650000,'uploads/a253d5be-f5f0-4788-85ed-f72d8fa2fecd-Ramesh_Ration_Card.jpg',1,1),(3,13,1,'Job',3,65000,'uploads/692e6cf8-381c-4960-b4a5-49ed9572e091-photo.webp',2,1),(4,15,1,'Job',6,65220,'uploads/a1b38473-91c7-437c-97fa-cadd7543d634-Ramesh_Ration_Card.jpg',1,1);
/*!40000 ALTER TABLE `needy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_token`
--

DROP TABLE IF EXISTS `refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh_token` (
  `token_id` int NOT NULL AUTO_INCREMENT,
  `refresh_token` varchar(300) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_token`
--

LOCK TABLES `refresh_token` WRITE;
/*!40000 ALTER TABLE `refresh_token` DISABLE KEYS */;
INSERT INTO `refresh_token` VALUES (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NzUxODQ1NzMsImV4cCI6MTY3NTE4NDY5M30.vRM3vfILL5or7Nl2y4ulz1ufS85uEQTAiJ9WhXpBmkU'),(2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NzUxODQ1ODAsImV4cCI6MTY3NTE4NDcwMH0.smR_YATapt42l6u35foODAiaKMsD7ZWvek627DEbRgQ'),(3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NzUxODQ2NDksImV4cCI6MTY3NTE4NDc2OX0.isX6RWMWb93oQlq0-mNCS18pxCfV5zuoScsvjax_NvE'),(4,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NzUxODQ2NzYsImV4cCI6MTY3NTE4NDc5Nn0.jCUT0hw2b8aHsZG4IeW5fSQ_LuapBG_7J5KjvcYaV8g'),(5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NzUxODQ2OTksImV4cCI6MTY3NTE4NDgxOX0.skJdeH07W7yJjxFmLguWtgrXxporhnwreTfdqlVdTjE'),(6,'[object Promise]'),(7,'[object Promise]'),(8,'[object Promise]'),(9,'[object Promise]'),(10,'[object Promise]'),(11,'[object Promise]'),(12,'[object Promise]'),(13,'[object Promise]'),(14,'[object Promise]'),(15,'[object Promise]'),(16,'[object Promise]'),(17,'[object Promise]'),(18,'[object Promise]'),(19,'[object Promise]'),(20,'[object Promise]'),(21,'[object Promise]'),(22,'[object Promise]'),(23,'[object Promise]'),(24,'[object Promise]'),(25,'[object Promise]'),(26,'[object Promise]'),(27,'[object Promise]'),(28,'[object Promise]'),(29,'[object Promise]'),(30,'[object Promise]'),(31,'[object Promise]'),(32,'[object Promise]'),(33,'[object Promise]'),(34,'[object Promise]'),(35,'[object Promise]'),(36,'[object Promise]'),(37,'[object Promise]'),(38,'[object Promise]'),(39,'[object Promise]'),(40,'[object Promise]'),(41,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1MjcyOTI2LCJleHAiOjE2NzUyNzMwNDZ9.4oOZPUqvH7U42EwM-pudf7_81sZye3naThfNSTgCY1k'),(42,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1MjczMDA2LCJleHAiOjE2NzUyNzMxMjZ9.1rFucpaC0YP1X-TtbRx7x6wvcG3uC-O7-ovooHxnU4k'),(43,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTGlvbmVsIE1lc3NpIiwiZW1haWwiOiJsZW9AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1MjczMDI0LCJleHAiOjE2NzUyNzMxNDR9.Ld378szFLBIYrEAZYnx3MGjaS-lPAx4M9AT0tiFM4og'),(44,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiU2hhemxpIEFuc2FyaSIsImVtYWlsIjoic2hhemxpQGdtYWlsLmNvbSIsInJvbGVfaWQiOjIsImlhdCI6MTY3NTI3MzA2OSwiZXhwIjoxNjc1MjczMTg5fQ.bBIhpC4a03KDtuBFS414I3A_qg42mMteFi77yMOk9F0'),(45,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1MjczMzU3LCJleHAiOjE2NzUyNzM0Nzd9.JY3ocxYXSNT7wT0SUrd4RKkeIkctQPjfqXaCP-9Cf6A'),(46,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1MjczNTAwLCJleHAiOjE2NzUyNzM2MjB9.ywjpki3Uf8cOVH8X4s3tyZkVzUT_AOldRv3DLxoESxQ'),(47,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1Mjc0Mjg0LCJleHAiOjE2NzUyNzQ0MDR9.kEaVlyvx19Jq9OzTVY9LeZHwLff4f8Q-Nl4keuEZn8w'),(48,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NjgwNzQyLCJleHAiOjE2NzU2ODA4NjJ9.FeE-Av7mZuG96SUk5glU6Vy87aFA4G0n55mxnwlZy_c'),(49,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NjgxNDY0LCJleHAiOjE2NzU2ODE1ODR9.NVTpSiyLJuAh3HFgjTfJ-Y0p0l4QAPrlj1NGuJekAa4'),(50,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NjgzNjAxLCJleHAiOjE2NzU2ODM3MjF9.5W38aIewvkKiFHc16F_-tl7PpAWtj-VIn93aY2cArr8'),(51,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NjkyNTg5LCJleHAiOjE2NzU2OTI3MDl9.yL-ZUGFhG9eAGMtuKpjZRpKtEVgr8n-yVeZ-6JJs48I'),(52,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NjkyOTY5LCJleHAiOjE2NzU2OTMwODl9.SeOE-EthzMDnnwpSSRlbZ4oZqCjYdwAG7tJiZWje05w'),(53,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NjkzMTkwLCJleHAiOjE2NzU2OTMzMTB9.ez2ob52rXjYYR2_ys4VbJKZBRt-zzFVIdisJQt3W_qw'),(54,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzA0MjIxLCJleHAiOjE2NzU3MDQzNDF9.md3wQzQtIs6igrf43DW6JiPSIiunBfbhxFfWjbsnEzg'),(55,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzA0Njg5LCJleHAiOjE2NzU3MDQ4MDl9.n9Txp01s39W3RlJBHuR5Hes_Hmc5aFLNOZUPjp5XoJs'),(56,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzA1Njk4LCJleHAiOjE2NzU3MDU4MTh9.sXK0jd3xkPAYNabqnR7lyQrEGUOf2iajyvcLwoaPkgQ'),(57,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzA1NzQzLCJleHAiOjE2NzU3MDU4NjN9.VbY8p1lZz1-ELaaSRkHHX4sBiwmAeEsRddLbNVqazMA'),(58,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzA1NzY0LCJleHAiOjE2NzU3MDU4ODR9.yprIxLXzoGMfOY28CuQS8kliveg-oo2ZtmVzuvhkf0M'),(59,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzA1ODAwLCJleHAiOjE2NzU3MDU5MjB9.h3ySenzSPEpe3FXxIceM4foJ3Tqws-DPnmrA566FWP8'),(60,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzA1ODQ0LCJleHAiOjE2NzU3MDU5NjR9.X0AlNIjHzbHsAnsWD4-MBMNWwJ1MmSW9ac8MK-rNt0s'),(61,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzA1ODc2LCJleHAiOjE2NzU3MDU5OTZ9.INyKYVf8vPk9S0-Ac-vdzACJAUDuiJkXSYDYAkdwRQs'),(62,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzA1ODkwLCJleHAiOjE2NzU3MDYwMTB9.MYUJP58FZ600jWupz9LU13kbs9D_a3ZP-5BupCLmm9M'),(63,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzA1OTYyLCJleHAiOjE2NzU3MDYwODJ9.ZSqp3ZiYyg0R91bEjMzw3V5GuSql_k0duBdLvfp2VlA'),(64,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzA2MDA3LCJleHAiOjE2NzU3MDYxMjd9.3A7ADH1Pooa-Yphy7JszxPg4fizBZGILZ60DrXmcLQs'),(65,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzA2MDQzLCJleHAiOjE2NzU3MDYxNjN9.pByLdS8UIqsG3UCMEcb74vsQHo_6Qv9thogwPKXSgo8'),(66,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzA3MjY0LCJleHAiOjE2NzU3MDczODR9.qAUgsfU8Jy1HWWozp57g07ULRPQJ-naxgMzrTlAmrX8'),(67,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiVmluaWNpdXMgSnVuaW9yIiwiZW1haWwiOiJ2aW5pQGhvdG1haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzUxMzE0LCJleHAiOjE2NzU3NTE0MzR9.m0QoeAL4YzerrCzziQo2LlZkDea5eW8KuKQieJG-dCI'),(68,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzUxMzMwLCJleHAiOjE2NzU3NTE0NTB9.N_afmszr-Ew68joxlhFuJtrL03IrixO3sBAmXP0vTH0'),(69,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzUyNzYzLCJleHAiOjE2NzU3NTI4ODN9.1_XdfLH_BOsrNCoTHR6Zw67oWmcfL1PJ-vkIaPAvW2U'),(70,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzU0MDE0LCJleHAiOjE2NzU3NTQxMzR9.UndqKOYlAbEkGRWlKX3tglkf5-5-96aLDgw-sBrTxTM'),(71,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiVmluaWNpdXMgSnVuaW9yIiwiZW1haWwiOiJ2aW5pQGhvdG1haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzU0MDI4LCJleHAiOjE2NzU3NTQxNDh9.2-1-WK7jWlhfy4a_oGoUd-WAzEI5tHWef2wx9eEdRLc'),(72,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiVmluaWNpdXMgSnVuaW9yIiwiZW1haWwiOiJ2aW5pQGhvdG1haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzU0MzU3LCJleHAiOjE2NzU3NTQ0Nzd9.EtobS1miynRMMLI7BWpPiUIs6wMFBEZKSPmhOwFFL68'),(73,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzU0MzcxLCJleHAiOjE2NzU3NTQ0OTF9.oPLvMf5mdcViTwRd6URQq9ni3uWdpslt1sm3_S116YY'),(74,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiU2hhemxpIEFuc2FyaSIsImVtYWlsIjoic2hhemxpQGdtYWlsLmNvbSIsInJvbGVfaWQiOjIsImlhdCI6MTY3NTc2NTQ2MSwiZXhwIjoxNjc1NzY1NTgxfQ.YYRGg61Q9QbaRaPV6bX9lBPbCNlJvRYizRrP1RbyOoY'),(75,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzY1NTU2LCJleHAiOjE2NzU3NjU2NzZ9.JZL22awbbBELr9WDe8qknLWp58RMSBQ5ZhfJ5nde878'),(76,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzY1NzE3LCJleHAiOjE2NzU3NjU4Mzd9.gpv2AZxyzHes562zM2SG6dJFaSXdz66nObzhDbA_6Z0'),(77,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzY1ODMxLCJleHAiOjE2NzU3NjU5NTF9.VsgyXkog0NOynbW0A4ZpQhcTjat6YkoqQtbwgeBmSZk'),(78,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzY1ODQ0LCJleHAiOjE2NzU3NjU5NjR9.4EDa52nbrjuIRNeJmTyqPDChJdYweGhCzvOSt9G0IiU'),(79,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzY3MTk3LCJleHAiOjE2NzU3NjczMTd9.ePJK28TzVaYqBbZdbMGM73nMecTfUnQNNnjVftjZugg'),(80,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiU2hhemxpIEFuc2FyaSIsImVtYWlsIjoic2hhemxpQGdtYWlsLmNvbSIsInJvbGVfaWQiOjIsImlhdCI6MTY3NTc3MDA2MiwiZXhwIjoxNjc1NzcwMTgyfQ.lOW2fC5ePdhvAbH_GOValVwiuwEhL-7tULsAxi3NWAk'),(81,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiU2hhemxpIEFuc2FyaSIsImVtYWlsIjoic2hhemxpQGdtYWlsLmNvbSIsInJvbGVfaWQiOjIsImlhdCI6MTY3NTc3MDEyMSwiZXhwIjoxNjc1NzcwMjQxfQ.eiI-hvslVoaI4T4PP7AAAnAtvvsD0iVvuYyBuMjBFjA'),(82,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzcwNTA1LCJleHAiOjE2NzU3NzA2MjV9.Gu-NT8CpEGDLsPDm4XIOAfS6_b_KiN6hvgXvGNn6ndo'),(83,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiU2hhemxpIEFuc2FyaSIsImVtYWlsIjoic2hhemxpQGdtYWlsLmNvbSIsInJvbGVfaWQiOjIsImlhdCI6MTY3NTc3MDU0MSwiZXhwIjoxNjc1NzcwNjYxfQ.UyfqZCe_zbJeS7BG85jmaU_l5wmtkiDI_I6gfJekslo'),(84,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiU2hhemxpIEFuc2FyaSIsImVtYWlsIjoic2hhemxpQGdtYWlsLmNvbSIsInJvbGVfaWQiOjIsImlhdCI6MTY3NTc3MDcwMiwiZXhwIjoxNjc1NzcwODIyfQ.AJh1x5ULOHJ_X3LKXijPOZvIldAZ4r42fiMHzU5AGlo'),(85,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiUGFibG8gR2F2aSIsImVtYWlsIjoiZ2F2aUBnbWFpbC5jb20iLCJyb2xlX2lkIjoyLCJpYXQiOjE2NzU3NzA3MTIsImV4cCI6MTY3NTc3MDgzMn0.K_C6685eTok-OcNr9AuirEfDVQd2L1gBXbwkbLmRv2k'),(86,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzcwODg4LCJleHAiOjE2NzU3NzEwMDh9.KfNzB2bpzq5K3Rv-cGNxLwsRvitUrT3COeMVvHFta6Q'),(87,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiVmluaWNpdXMgSnVuaW9yIiwiZW1haWwiOiJ2aW5pQGhvdG1haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzczMDI1LCJleHAiOjE2NzU3NzMxNDV9.B5DOXrxLVEtOmFJvdL4XpKD8crk5jTBFo1iD5t7qxGg'),(88,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzczMDM5LCJleHAiOjE2NzU3NzMxNTl9.1ZvUWKdgfcCxksDRZmP0cXJURrTjpvllMo2-ZOAY-YU'),(89,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzczMDUwLCJleHAiOjE2NzU3NzMxNzB9.4nwWcf0pgxhAd_mH8PCkul1Zvq4ieSLfmziU_4r9uRk'),(90,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzczMTE3LCJleHAiOjE2NzU3NzMyMzd9.hpfdL-_jPKmg5YyAIveOpsYVPWxX7VJA_0KcN9uBSXk'),(91,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzczMTM4LCJleHAiOjE2NzU3NzMyNTh9.PRmPuYwe6yb3dc_8kbPVj8C17im_tQrJCiZSfUPu2lA'),(92,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzczMjU3LCJleHAiOjE2NzU3NzMzNzd9.H7VYzCN8BXjZzO8FmmuvYwuUbZ0YajAAEHTSOMMXpVc'),(93,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzczMjc5LCJleHAiOjE2NzU3NzMzOTl9.1BC1am8fKJfVyCOJtBoX7gteEkyeyzcHn9nW6LtblbY'),(94,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzczNDE1LCJleHAiOjE2NzU3NzM1MzV9.aa2i0D4kcdh4LePrWp5mJTc4tlEUWtGPeL_cpnkZrf8'),(95,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTWFkbmkgQW5zYXJpIiwiZW1haWwiOiJtYWRuaUBnbWFpbC5jb20iLCJyb2xlX2lkIjoyLCJpYXQiOjE2NzU3Nzk5MDUsImV4cCI6MTY3NTc4MDAyNX0.LMvi5gLiL0X0YT5434-1jA-qNFFJIWiUMvMSsvD2UPA'),(96,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTWF6aGFyIEFuc2FyaSIsImVtYWlsIjoibWF6aGFyQGdtYWlsLmNvbSIsInJvbGVfaWQiOjEsImlhdCI6MTY3NTc3OTkyMywiZXhwIjoxNjc1NzgwMDQzfQ.MsKxvrXEGhXqPeTpIQJJZY6WGKf-KAjq-DjYBJRlLog'),(97,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1Nzc5OTMzLCJleHAiOjE2NzU3ODAwNTN9.eGT_epwqNlL9KaEdbkjnBlVXgGK0x1jisLJE16-nVPQ'),(98,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTWFkbmkgQW5zYXJpIiwiZW1haWwiOiJtYWRuaUBnbWFpbC5jb20iLCJyb2xlX2lkIjoyLCJpYXQiOjE2NzU3ODAwMTgsImV4cCI6MTY3NTc4MDEzOH0.pzxWTSx2fy9A2j3LuOYRWYkNi6m4h59mn1bXyFrJ_4Q'),(99,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiVmluaWNpdXMgSnVuaW9yIiwiZW1haWwiOiJ2aW5pQGhvdG1haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc1NzgwMTMyLCJleHAiOjE2NzU3ODAyNTJ9.Sm-ki8HzIa7OUO8_x5NECb_GJwWsWTJ54VTFwG4C0BU'),(100,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTWF6aGFyIEFuc2FyaSIsImVtYWlsIjoibWF6aGFyQGdtYWlsLmNvbSIsInJvbGVfaWQiOjEsImlhdCI6MTY3NTc4MDE5OCwiZXhwIjoxNjc1NzgwMzE4fQ.gilwc05Aqb9ZhYUhPd8xIk8Ug85idgZmt3P2vZgk_hQ'),(101,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQXJpYiBBbnNhcmkiLCJlbWFpbCI6ImFyaWJAZ21haWwuY29tIiwicm9sZV9pZCI6MywiaWF0IjoxNjc1NzgzMzk4LCJleHAiOjE2NzU3ODM1MTh9.plC_k27uQ1uW90xFGk8JAI1644V-a-TYNW6YkUYG7Ew');
/*!40000 ALTER TABLE `refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'needy'),(2,'donor'),(3,'admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(13) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `role_id` int NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `registrationTimeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  KEY `user_role_FK_idx` (`role_id`),
  CONSTRAINT `user_role_FK` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Arib Ansari','$2b$10$tKoczCFiNrWsNEnn2qTRpeBGHT3C2KGKFfj9fmHHDZi89pmgD3AoK','arib@gmail.com','8104302115','Byculla, Mumbai - 400008',3,1,'2023-02-06 11:37:14'),(2,'Shazli Ansari','$2b$10$f3c0Nnr3HQrizE6NjizIy.A6ufRAEvkZsu/z7hKTvQespRN8ynPTS','shazli@gmail.com','9967203221','Tokyo, Japan - 990912',2,0,'2023-02-04 11:37:14'),(11,'Pablo Gavi','$2b$10$0gV0NR2zor1Flb9q9nPVc.8o3uzOxZuxEEtpUAxTUOXY.KuvNrTge','gavi@gmail.com','8745899965','Barcelona, Spain',2,1,'2023-01-13 11:38:57'),(12,'karim benzema','$2b$10$3I0f8pjvmDZp9EgQ0EU5ZuroT2MYlAI4kePz2Vc3R6rFN3UUZp6iq','karim@gmail.com','7878458921','Madrid, Spain',1,0,'2023-02-06 17:14:11'),(13,'Vinicius Junior','$2b$10$Vqlv4yurrhhjs3IuOv5HeOwJN1tbQekDwhxoeiV7tXvNPEuKOJ4/6','vini@hotmail.com','7845896698','Sao Paolo, Brazil',1,1,'2023-02-07 06:27:39'),(14,'Madni Ansari','$2b$10$iekV5/ejVa6w6YnLzcw1qOxzTBSEuoHRzYnZXOdiBaX7UjbjBOq.S','madni@gmail.com','8784569885','Mumbai, India',2,1,'2023-02-07 14:22:22'),(15,'Mazhar Ansari','$2b$10$2q.4yICScYM3A1eLVI2Kye6P5mUvLxhQ2DwHXCkVxrTOvyh/ydlyq','mazhar@gmail.com','7787546589','Mumbai, India',1,1,'2023-02-07 14:24:07');
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

-- Dump completed on 2023-02-07 21:07:05
