-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: seva_x
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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(500) NOT NULL,
  `pictureSrc` varchar(500) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `creationTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`),
  KEY `item_users_FK_idx` (`user_id`),
  CONSTRAINT `item_users_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (2,'Clothes and Shoes for 18-30yr old','Nunc rhoncus metus sed neque vehicula convallis. Praesent non dui augue. Nullam pellentesque mi turpis, quis vulputate eros tristique sed. Donec commodo, nisi ac pellentesque blandit, quam libero auctor felis, quis cursus velit turpis ut est. Vestibulum a tellus pellentesque, scelerisque justo eu, mollis felis. Fusce purus dui, sagittis quis ipsum eget, interdum aliquam justo. Nam rutrum felis at urna sollicitudin tincidunt.','uploads/items/91416840-80dc-425f-b108-c7aff37fd67e-laundry-tips-before-you-donate-clothes-4046404-01-ca8bf91d0b9f418689cec82662381c09.jpg',1,'2023-02-16 16:34:35',14),(3,'12th std NCERT textbooks','Nunc rhoncus metus sed neque vehicula convallis. Praesent non dui augue. Nullam pellentesque mi turpis, quis vulputate eros tristique sed. Donec commodo, nisi ac pellentesque blandit, quam libero auctor felis, quis cursus velit turpis ut est. Vestibulum a tellus pellentesque, scelerisque justo eu, mollis felis. Fusce purus dui, sagittis quis ipsum eget, interdum aliquam justo. Nam rutrum felis at urna sollicitudin tincidunt.','uploads/items/c10e64a7-cf60-44e3-ac95-e64298566a84-IMG_20230121_180822_250x250@2x.webp',1,'2023-02-16 17:02:11',14),(4,'Clothes for women','Cras tincidunt, sapien vitae bibendum consectetur, orci enim cursus risus, ut viverra velit risus fermentum sem. In lobortis sapien libero, non semper lectus eleifend a. Aenean sed neque a mi bibendum rhoncus. Vestibulum sed leo non lacus molestie iaculis sit amet vel massa. Ut at augue dolor. Sed facilisis luctus risus, id aliquam nibh tristique ac. Cras vitae elementum urna. Donec libero est, finibus nec lacus in, convallis congue dui. Integer vel libero lectus. Maecenas aliquam eros arcu, non','uploads/items/9fc1f279-9528-45cd-a33a-7875124a3b11-istockphoto-653003428-612x612.jpg',1,'2023-02-16 17:02:34',14),(5,'20kg Rice','orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vel tellus dignissim, efficitur leo tristique, malesuada lorem. Cras dictum ipsum interdum, posuere lacus vel, sodales risus. Suspendisse a sapien eros. Maecenas venenatis ornare massa, et euismod augue ultricies et. Aenean bibendum, metus vitae posuere volutpat, eros turpis vehicula urna, a molestie mauris nisi at sem. Suspendisse posuere, eros in ornare mollis, libero sapien porttitor sapien, id dapibus tellus orci at lacus. Nunc c','uploads/items/ddbad5fc-d911-4800-916f-4f169a3f9000-1649441664-9019-rice-splco.jpg',1,'2023-02-16 17:03:02',14);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_requests`
--

DROP TABLE IF EXISTS `item_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `user_id` int NOT NULL,
  `request_status` tinyint(1) DEFAULT '0',
  `request_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `request_update_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `itemRequests_item_FK_idx` (`item_id`),
  KEY `itemRequests_user_FK_idx` (`user_id`),
  CONSTRAINT `itemRequests_item_FK` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `itemRequests_user_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_requests`
--

LOCK TABLES `item_requests` WRITE;
/*!40000 ALTER TABLE `item_requests` DISABLE KEYS */;
INSERT INTO `item_requests` VALUES (3,3,15,0,'2023-03-03 16:31:58','2023-03-06 20:34:05'),(7,5,15,0,'2023-03-06 15:06:38','2023-03-06 15:06:38'),(8,2,15,0,'2023-03-06 15:54:50','2023-03-06 20:34:05'),(9,2,12,0,'2023-03-06 19:33:37','2023-03-06 19:33:37'),(10,5,12,0,'2023-03-06 19:48:19','2023-03-06 19:48:19'),(11,4,12,0,'2023-03-07 15:06:14','2023-03-07 15:06:14');
/*!40000 ALTER TABLE `item_requests` ENABLE KEYS */;
UNLOCK TABLES;

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
  `sourceOfIncome` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `noOfFamilyMembers` int NOT NULL,
  `yearlyIncome` int NOT NULL,
  `rationCardSrc` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `isVerified` tinyint(1) NOT NULL DEFAULT '0',
  `totalEarningMembersInFamily` int NOT NULL,
  PRIMARY KEY (`needy_id`),
  KEY `needy_user_FK_idx` (`user_id`),
  CONSTRAINT `needy_user_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `needy`
--

LOCK TABLES `needy` WRITE;
/*!40000 ALTER TABLE `needy` DISABLE KEYS */;
INSERT INTO `needy` VALUES (2,12,1,'Job',5,650000,'uploads/rationCards/a253d5be-f5f0-4788-85ed-f72d8fa2fecd-Ramesh_Ration_Card.jpg',1,1),(3,13,1,'Job',3,65000,'uploads/rationCards/692e6cf8-381c-4960-b4a5-49ed9572e091-photo.webp',2,1),(4,15,1,'Job',6,65220,'uploads/rationCards/a1b38473-91c7-437c-97fa-cadd7543d634-Ramesh_Ration_Card.jpg',1,1),(5,16,1,'Job',5,500000,'uploads/rationCards/59a3b2f4-5f2a-45f8-a3d3-18fba647d98f-17_09_2019-rationccc_19586445.jpg',0,1);
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
  `refresh_token` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_token`
--

LOCK TABLES `refresh_token` WRITE;
/*!40000 ALTER TABLE `refresh_token` DISABLE KEYS */;
INSERT INTO `refresh_token` VALUES (193,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTW9oYW1lZCBBcmliIiwiZW1haWwiOiJhcmliQGdtYWlsLmNvbSIsInJvbGVfaWQiOjMsImlhdCI6MTY3ODEzMTA4OCwiZXhwIjoxNjc4MTMxMjA4fQ.ZFBm0DTJXwYyV5h8d--uAanJwrWb5jBFm6DSpk3UN_k'),(194,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc4MTMxMTE4LCJleHAiOjE2NzgxMzEyMzh9.hrF5ZyaUY2utPBi4ZSV0aYKkbbeUng6w6dyDbVp0fvo'),(195,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTWFkbmkgQW5zYXJpIiwiZW1haWwiOiJtYWRuaUBnbWFpbC5jb20iLCJyb2xlX2lkIjoyLCJpYXQiOjE2NzgxMzIzMTEsImV4cCI6MTY3ODEzMjQzMX0.rabbNgZh1EIjhg1999lnK2OoJU-zWUNfiiNuXjFDveY'),(196,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTWF6aGFyIEFuc2FyaSIsImVtYWlsIjoibWF6aGFyQGdtYWlsLmNvbSIsInJvbGVfaWQiOjEsImlhdCI6MTY3ODEzNDQ5NSwiZXhwIjoxNjc4MTM0NjE1fQ.DV_mf9JdDk3r4jdQzqpZjPEagVWLzL9_OL1GLr03kwg'),(197,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTWFkbmkgQW5zYXJpIiwiZW1haWwiOiJtYWRuaUBnbWFpbC5jb20iLCJyb2xlX2lkIjoyLCJpYXQiOjE2NzgxMzQ4NzMsImV4cCI6MTY3ODEzNDk5M30.uVd3zuEp0D-xtevmwrbrjPuRjpg7hg6QUzgdaMXxO9M'),(198,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTWF6aGFyIEFuc2FyaSIsImVtYWlsIjoibWF6aGFyQGdtYWlsLmNvbSIsInJvbGVfaWQiOjEsImlhdCI6MTY3ODEzNTY4MiwiZXhwIjoxNjc4MTM1ODAyfQ.j4uk0Nc-MbEWNecE0GeFXA1Ngwib1zykCR8qS-yVuZQ'),(199,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FyaW0gYmVuemVtYSIsImVtYWlsIjoia2FyaW1AZ21haWwuY29tIiwicm9sZV9pZCI6MSwiaWF0IjoxNjc4MjAxNTMxLCJleHAiOjE2NzgyMDE2NTF9.TBHR1sW6WKLIMeJ-MOHgQE-SGGX4GrZ4nEZRSAjWSTw'),(200,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTWFkbmkgQW5zYXJpIiwiZW1haWwiOiJtYWRuaUBnbWFpbC5jb20iLCJyb2xlX2lkIjoyLCJpYXQiOjE2NzgyMDE2NTUsImV4cCI6MTY3ODIwMTc3NX0.7LiLxT--tdupJKCwvAwusZjl0THdSouYUdtrfbKLuOg');
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
  `role` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
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
-- Table structure for table `saved`
--

DROP TABLE IF EXISTS `saved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved` (
  `saved_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`saved_id`),
  KEY `saved_item_FK_idx` (`item_id`),
  KEY `saved_user_FK_idx` (`user_id`),
  CONSTRAINT `saved_item_FK` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `saved_user_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved`
--

LOCK TABLES `saved` WRITE;
/*!40000 ALTER TABLE `saved` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `role_id` int NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `registrationTimeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `profilePictureSrc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_role_FK_idx` (`role_id`),
  CONSTRAINT `user_role_FK` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mohamed Arib','$2b$10$WsgEtt026XhCH9EwkEZ66eZI0gBbddZgSuZjDI44ugImMU7Y0CV/a','arib@gmail.com','8451066399','Byculla, Mumbai - 400008',3,1,'2023-02-06 11:37:14','uploads/profilePictures/1bf756d2-2029-46d3-8dce-8f0fdb9e1b78-wersm-twitter-expands-testing-of-nft-profile-pictures-feature.jpg'),(2,'Shazli Ansari','$2b$10$f3c0Nnr3HQrizE6NjizIy.A6ufRAEvkZsu/z7hKTvQespRN8ynPTS','shazli@gmail.com','9967203221','Tokyo, Japan - 990912',2,0,'2023-02-04 11:37:14',NULL),(11,'Pablo Gavi','$2b$10$0gV0NR2zor1Flb9q9nPVc.8o3uzOxZuxEEtpUAxTUOXY.KuvNrTge','gavi@gmail.com','8745899965','Barcelona, Spain',2,1,'2023-01-13 11:38:57','uploads/profilePictures/2e260904-baf6-41e4-b420-1b52486ba024-gavi_o7y5l187qk2u1tlfdca7oguoa.jpg'),(12,'karim benzema','$2b$10$3I0f8pjvmDZp9EgQ0EU5ZuroT2MYlAI4kePz2Vc3R6rFN3UUZp6iq','karim@gmail.com','7878458921','Madrid, Spain',1,1,'2023-02-06 17:14:11',NULL),(13,'Vinicius Junior','$2b$10$Vqlv4yurrhhjs3IuOv5HeOwJN1tbQekDwhxoeiV7tXvNPEuKOJ4/6','vini@hotmail.com','7845896698','Sao Paolo, Brazil',1,1,'2023-02-07 06:27:39',NULL),(14,'Madni Ansari','$2b$10$iekV5/ejVa6w6YnLzcw1qOxzTBSEuoHRzYnZXOdiBaX7UjbjBOq.S','madni@gmail.com','8784569885','Mumbai, India',2,1,'2023-02-07 14:22:22','uploads/profilePictures/74dedbb8-b462-4178-a05b-6c0edc0c9f38-FjU2lkcWYAgNG6d.jpg'),(15,'Mazhar Ansari','$2b$10$2q.4yICScYM3A1eLVI2Kye6P5mUvLxhQ2DwHXCkVxrTOvyh/ydlyq','mazhar@gmail.com','7787546589','Mumbai, India',1,1,'2023-02-07 14:24:07','uploads/profilePictures/a02d298e-cb38-471d-adce-f392490ec2a5-4o5MnleFwkD2KofZsUn00NIMLvwP3EzlQ02hPyOR.jpg'),(16,'Hamza Khan','$2b$10$iAFwyYDKznabmPXUwogIoeTppjo5h0aE.EyYU.WDWI8sxJ59hqhDC','hamza@gmail.com','8456565474','Mira Road, Maharashtra, India',1,1,'2023-02-08 12:34:52',NULL);
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

-- Dump completed on 2023-03-07 23:49:45
