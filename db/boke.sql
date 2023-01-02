<<<<<<< HEAD
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: boke
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `articleclass`
--

DROP TABLE IF EXISTS `articleclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articleclass` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文章分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleclass`
--

LOCK TABLES `articleclass` WRITE;
/*!40000 ALTER TABLE `articleclass` DISABLE KEYS */;
INSERT INTO `articleclass` VALUES (1,'vue'),(2,'js'),(3,'css'),(4,'node'),(5,'test');
/*!40000 ALTER TABLE `articleclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articleitem`
--

DROP TABLE IF EXISTS `articleitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articleitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `class` int NOT NULL,
  `content` text NOT NULL,
  `imgurl` text NOT NULL,
  `click` int NOT NULL DEFAULT '0',
  `sendtime` varchar(45) NOT NULL,
  `classname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleitem`
--

LOCK TABLES `articleitem` WRITE;
/*!40000 ALTER TABLE `articleitem` DISABLE KEYS */;
INSERT INTO `articleitem` VALUES (35,'Material Design风格的css框架',5,'hell,\r Material Design User Interface\r MDUI 漂亮、轻量且好用，它能让你更轻松地开发 Material Design 网页应用19 种主色、16 种强调色、1 种夜间主题，只需添加一个 CSS 类即可切换。且支持根据操作系统主题自动切换主题。\r </br></br></br></br>\r \r         <a href=\"\" class=\"tc2\">\r         Material design \r         </a>\r         是一个包含光线、材料和投射阴影的三维环境。\r \r    <h1>代码 :</h1>     <div class=\"promptbox-container\">\r     <div class=\"textbox\">\r         Premium designed icons for use in web, iOS, Android, and desktop apps. Support for SVG and web font. Completely open source, MIT licensed and built by Ionic.\r         </div>\r     <div class=\"leftbox bgc\"></div>\r   </div>\r         \r <div class=\"codebox-container\">\r   <ul class=\"head\">\r     <li></li>\r     <li></li>\r     <li></li>\r   </ul><pre class=\"javascript\" style=\"font-family:monospace;\"><ol><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\"> li <span style=\"color: #009900;\">&#123;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      width<span style=\"color: #339933;\">:</span> 12px<span style=\"color: #339933;\">;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      height<span style=\"color: #339933;\">:</span> 12px<span style=\"color: #339933;\">;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      border<span style=\"color: #339933;\">-</span>radius<span style=\"color: #339933;\">:</span> <span style=\"color: #CC0000;\">50</span><span style=\"color: #339933;\">%;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    <span style=\"color: #009900;\">&#125;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">&nbsp;</div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    li<span style=\"color: #339933;\">:</span>nth<span style=\"color: #339933;\">-</span>child<span style=\"color: #009900;\">&#40;</span><span style=\"color: #CC0000;\">1</span><span style=\"color: #009900;\">&#41;</span> <span style=\"color: #009900;\">&#123;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      background<span style=\"color: #339933;\">:</span> rgba<span style=\"color: #009900;\">&#40;</span><span style=\"color: #CC0000;\">255</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">95</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">87</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">1</span><span style=\"color: #009900;\">&#41;</span><span style=\"color: #339933;\">;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    <span style=\"color: #009900;\">&#125;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">&nbsp;</div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    li<span style=\"color: #339933;\">:</span>nth<span style=\"color: #339933;\">-</span>child<span style=\"color: #009900;\">&#40;</span><span style=\"color: #CC0000;\">2</span><span style=\"color: #009900;\">&#41;</span> <span style=\"color: #009900;\">&#123;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      background<span style=\"color: #339933;\">:</span> rgba<span style=\"color: #009900;\">&#40;</span><span style=\"color: #CC0000;\">254</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">188</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">46</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">1</span><span style=\"color: #009900;\">&#41;</span><span style=\"color: #339933;\">;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      margin<span style=\"color: #339933;\">:</span> <span style=\"color: #CC0000;\">0</span> 8px<span style=\"color: #339933;\">;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    <span style=\"color: #009900;\">&#125;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">&nbsp;</div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    li<span style=\"color: #339933;\">:</span>nth<span style=\"color: #339933;\">-</span>child<span style=\"color: #009900;\">&#40;</span><span style=\"color: #CC0000;\">3</span><span style=\"color: #009900;\">&#41;</span> <span style=\"color: #009900;\">&#123;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      background<span style=\"color: #339933;\">:</span> rgba<span style=\"color: #009900;\">&#40;</span><span style=\"color: #CC0000;\">40</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">200</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">64</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">1</span><span style=\"color: #009900;\">&#41;</span><span style=\"color: #339933;\">;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    <span style=\"color: #009900;\">&#125;</span></div></li></ol></pre></div>            <div class=\"imagebox-container bgc\">\r       <img src=\"http://192.168.31.190:5139/static/img/wallhaven-4x1wg3.jpg\r         \" alt=\"\">\r     </div>\r <center class=\"tc2\">框架图例</center>','wallhaven-4x1wg3.jpg;',3,'1672558761027','test');
/*!40000 ALTER TABLE `articleitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-02 18:33:31
=======
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: boke
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `articleclass`
--

DROP TABLE IF EXISTS `articleclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articleclass` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文章分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleclass`
--

LOCK TABLES `articleclass` WRITE;
/*!40000 ALTER TABLE `articleclass` DISABLE KEYS */;
INSERT INTO `articleclass` VALUES (1,'vue'),(2,'js'),(3,'css'),(4,'node'),(5,'test');
/*!40000 ALTER TABLE `articleclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articleitem`
--

DROP TABLE IF EXISTS `articleitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articleitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `class` int NOT NULL,
  `content` text NOT NULL,
  `imgurl` text NOT NULL,
  `click` int NOT NULL DEFAULT '0',
  `sendtime` varchar(45) NOT NULL,
  `classname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleitem`
--

LOCK TABLES `articleitem` WRITE;
/*!40000 ALTER TABLE `articleitem` DISABLE KEYS */;
INSERT INTO `articleitem` VALUES (35,'Material Design风格的css框架',5,'hell,\r Material Design User Interface\r MDUI 漂亮、轻量且好用，它能让你更轻松地开发 Material Design 网页应用19 种主色、16 种强调色、1 种夜间主题，只需添加一个 CSS 类即可切换。且支持根据操作系统主题自动切换主题。\r </br></br></br></br>\r \r         <a href=\"\" class=\"tc2\">\r         Material design \r         </a>\r         是一个包含光线、材料和投射阴影的三维环境。\r \r    <h1>代码 :</h1>     <div class=\"promptbox-container\">\r     <div class=\"textbox\">\r         Premium designed icons for use in web, iOS, Android, and desktop apps. Support for SVG and web font. Completely open source, MIT licensed and built by Ionic.\r         </div>\r     <div class=\"leftbox bgc\"></div>\r   </div>\r         \r <div class=\"codebox-container\">\r   <ul class=\"head\">\r     <li></li>\r     <li></li>\r     <li></li>\r   </ul><pre class=\"javascript\" style=\"font-family:monospace;\"><ol><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\"> li <span style=\"color: #009900;\">&#123;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      width<span style=\"color: #339933;\">:</span> 12px<span style=\"color: #339933;\">;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      height<span style=\"color: #339933;\">:</span> 12px<span style=\"color: #339933;\">;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      border<span style=\"color: #339933;\">-</span>radius<span style=\"color: #339933;\">:</span> <span style=\"color: #CC0000;\">50</span><span style=\"color: #339933;\">%;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    <span style=\"color: #009900;\">&#125;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">&nbsp;</div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    li<span style=\"color: #339933;\">:</span>nth<span style=\"color: #339933;\">-</span>child<span style=\"color: #009900;\">&#40;</span><span style=\"color: #CC0000;\">1</span><span style=\"color: #009900;\">&#41;</span> <span style=\"color: #009900;\">&#123;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      background<span style=\"color: #339933;\">:</span> rgba<span style=\"color: #009900;\">&#40;</span><span style=\"color: #CC0000;\">255</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">95</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">87</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">1</span><span style=\"color: #009900;\">&#41;</span><span style=\"color: #339933;\">;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    <span style=\"color: #009900;\">&#125;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">&nbsp;</div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    li<span style=\"color: #339933;\">:</span>nth<span style=\"color: #339933;\">-</span>child<span style=\"color: #009900;\">&#40;</span><span style=\"color: #CC0000;\">2</span><span style=\"color: #009900;\">&#41;</span> <span style=\"color: #009900;\">&#123;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      background<span style=\"color: #339933;\">:</span> rgba<span style=\"color: #009900;\">&#40;</span><span style=\"color: #CC0000;\">254</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">188</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">46</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">1</span><span style=\"color: #009900;\">&#41;</span><span style=\"color: #339933;\">;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      margin<span style=\"color: #339933;\">:</span> <span style=\"color: #CC0000;\">0</span> 8px<span style=\"color: #339933;\">;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    <span style=\"color: #009900;\">&#125;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">&nbsp;</div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    li<span style=\"color: #339933;\">:</span>nth<span style=\"color: #339933;\">-</span>child<span style=\"color: #009900;\">&#40;</span><span style=\"color: #CC0000;\">3</span><span style=\"color: #009900;\">&#41;</span> <span style=\"color: #009900;\">&#123;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">      background<span style=\"color: #339933;\">:</span> rgba<span style=\"color: #009900;\">&#40;</span><span style=\"color: #CC0000;\">40</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">200</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">64</span><span style=\"color: #339933;\">,</span> <span style=\"color: #CC0000;\">1</span><span style=\"color: #009900;\">&#41;</span><span style=\"color: #339933;\">;</span></div></li><li style=\"font-weight: normal; vertical-align:top;\"><div style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;\">    <span style=\"color: #009900;\">&#125;</span></div></li></ol></pre></div>            <div class=\"imagebox-container bgc\">\r       <img src=\"http://192.168.31.190:5139/static/img/wallhaven-4x1wg3.jpg\r         \" alt=\"\">\r     </div>\r <center class=\"tc2\">框架图例</center>','wallhaven-4x1wg3.jpg;',3,'1672558761027','test');
/*!40000 ALTER TABLE `articleitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-02 18:33:31
>>>>>>> b5a4c98a32b418d39a78414fb12fefbf7e8d6542
