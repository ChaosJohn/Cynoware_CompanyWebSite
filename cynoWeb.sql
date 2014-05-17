-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: localhost    Database: com
-- ------------------------------------------------------
-- Server version	5.1.44

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

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactus` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `message` varchar(10000) NOT NULL COMMENT '信息',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES (2,'高帅','393250701@qq.com','这只是一个测试'),(18,'虞嘉豪','9@qq.com','哈哈');
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagepath` varchar(300) NOT NULL COMMENT '图片路径',
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES (1,'image/products_cover/11.1 Multi-touch ARM POS.png'),(2,'image/products_cover/14.1 Multi-touch ARM POS.png'),(3,'image/products_cover/15 Multi-touch ARM POS.png');
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newstitle` varchar(100) NOT NULL COMMENT '新闻概要',
  `imagepath` varchar(300) NOT NULL COMMENT '图片路径',
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Cynoware takes part in the Taipei Computex and lannches 10.1\" and 15\" Android touch screen POS syste','image/news/1.png'),(2,'Birthday Party','image/news/2.png'),(3,'Cynoware launches the new generation bus LCD advertising system','image/news/3.png'),(4,'Cynoware launches 14\" Android touch screen POS system and software','image/news/4.png'),(5,'Company Anniversity Eveninig','image/news/5.png'),(6,'Cynoware takes part in China Commerce Information Industry Conference in Xiamen. Dr. Wei Wu makes hi','image/news/6.png');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productid` int(10) NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `productname` varchar(100) NOT NULL COMMENT '产品名称',
  `imagepath` varchar(300) NOT NULL COMMENT '图片路径',
  `introduction` varchar(1000) DEFAULT NULL COMMENT '产品介绍',
  UNIQUE KEY `productid` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'10.1’’Multi-touch ARM POS','image/products_cover/11.1 Multi-touch ARM POS.png','^Freescale i.MX6 Cortex-A9|^Dual/Quad Core CPU up to 1.2GHz|^1GB/2GB DDR3 Memory|^Android 4.0 OS|^10.1\\\"Wide Screen and Multiple Capacitive Touch|^Integrate MSR,RFID,IC Card Module|^PAD and Docking Perfect Combination|^Cost Effective Solution|'),(2,'14.1’’Multi-touch ARM POS','image/products_cover/14.1 Multi-touch ARM POS.png','^Freescale i.MX6 Cortex-A9|^Dual/Quad Core CPU up to 1.2GHz|^1GB/2GB DDR3 Memory|^Android 4.0 OS|^14\\\" Wide Screen and Multiple Capacitive Touch|^Fasion and Slim Appearance|^Cost Effective Solution|^Provide i.MX535 Cortex-A8 Android 2.3 Solution for selection'),(3,'15’’Multi-touch ARM POS','image/products_cover/15 Multi-touch ARM POS.png','^Freescale i.MX535 Cortex-A8|^CPU Core up to 1.0GHz|^512MB/1GB DDR3 Memory|^Android 2.3 OS|^15\\\" 4:3 Screen and 5 Wire Resistive Touch|^Dual Screen Support|^Cost Saving Solution|^Provide i.MX6 Cortex-A9 Android 4.0 Solution for Selection'),(4,'19’’ Digital Signage ','image/products_cover/19 Digital Signage.png','^Freescale i.MX535 Cortex-A8|^CPU Core up to 1.0GHz|^512MB/1GB DDR3 Memory|^Linux OS|^19\\\" Wide Screen|^WIFI/3G/GPRS/GPS/Beidou|^Reliable Power System|^Customized Advertisement Mangement System '),(5,'POS Core & Carrier Board','image/products_cover/POS Core & Carrier Board.png','^CPU Core Board+Carrier Board Flexible Solution|^Freescale Cortex-A8/A9 and AllWinner Cortex-A7 Solution for Selection|^Support Various peripherals'),(6,'Customized Solutions','image/products_cover/Customized Solutions.png','^We Do Customization for you!');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcolor`
--

DROP TABLE IF EXISTS `productcolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcolor` (
  `productid` int(10) NOT NULL COMMENT '产品id',
  `colorhex` varchar(40) NOT NULL COMMENT '产品颜色编号',
  `colorname` varchar(40) NOT NULL COMMENT '颜色名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcolor`
--

LOCK TABLES `productcolor` WRITE;
/*!40000 ALTER TABLE `productcolor` DISABLE KEYS */;
INSERT INTO `productcolor` VALUES (1,'#bdbdbf','silver'),(2,'#bdbdbf ','silver'),(2,'#ffffff','white'),(3,'#000000','balck'),(3,'#bb0404','red'),(3,'#ffffff','white'),(4,'#ffffff','white'),(4,'#ffbd0b','yellow'),(4,'#b9cd0e','green');
/*!40000 ALTER TABLE `productcolor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productimage`
--

DROP TABLE IF EXISTS `productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productimage` (
  `productid` int(10) NOT NULL COMMENT '产品id',
  `imagepath` varchar(300) NOT NULL COMMENT '产品图片路径',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productimage`
--

LOCK TABLES `productimage` WRITE;
/*!40000 ALTER TABLE `productimage` DISABLE KEYS */;
INSERT INTO `productimage` VALUES (1,'image/product/productimages/10/nomal.png',1),(1,'image/product/productimages/10/front.png',2),(1,'image/product/productimages/10/left.png',3),(1,'image/product/productimages/10/back.png',4),(1,'image/product/productimages/10/nomal1.png',5),(1,'image/product/productimages/10/right.png',6),(1,'image/product/productimages/10/single.png',7),(2,'image/product/productimages/14/q.png',8),(2,'image/product/productimages/14/black.png',9),(2,'image/product/productimages/14/a.png',10),(2,'image/product/productimages/14/qw.png',11),(3,'image/product/productimages/15/black.png',12),(3,'image/product/productimages/15/back.png',13),(3,'image/product/productimages/15/red.png',14),(3,'image/product/productimages/15/white.png',15),(4,'image/product/productimages/19/yellow.png',16),(4,'image/product/productimages/19/green.png',17),(4,'image/product/productimages/19/white.png',18),(4,'image/product/productimages/19/environment.png',19),(4,'image/product/productimages/19/yellow2.png',20),(4,'image/product/productimages/19/yellow3.png',21),(4,'image/product/productimages/19/yellowc.png',22),(6,'image/product/productimages/Customized Solutions/a.png',23),(5,'image/product/productimages/POS SOLUTION/a.png',24),(3,'image/product/productimages/15/double.png',25);
/*!40000 ALTER TABLE `productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productmodel`
--

DROP TABLE IF EXISTS `productmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productmodel` (
  `productid` int(10) NOT NULL COMMENT '产品id',
  `imagepath` varchar(300) NOT NULL COMMENT '规格图片路径',
  `model` varchar(40) NOT NULL COMMENT '产品型号',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productmodel`
--

LOCK TABLES `productmodel` WRITE;
/*!40000 ALTER TABLE `productmodel` DISABLE KEYS */;
INSERT INTO `productmodel` VALUES (1,'image/product/productmodel/10/P101-A8.png','P101-A8',1),(1,'image/product/productmodel/10/P101-A9.png','P101-A9',2),(2,'image/product/productmodel/14/P140-A7.png','P140-A7',3),(2,'image/product/productmodel/14/P140-A8.png','P140-A8',4),(2,'image/product/productmodel/14/P140-A9.png','P140-A9',5),(3,'image/product/productmodel/15/P150-A8.png','P150-A8',6),(3,'image/product/productmodel/15/P150-A9.png','P150-A9',7),(4,'image/product/productmodel/19/P190-A8.png','P190-A8',8),(5,'image/product/productmodel/POS SOLUTION/CWS-A7.png','CWS-A7',9),(5,'image/product/productmodel/POS SOLUTION/CWS-A8.png','CWS-A8',10),(5,'image/product/productmodel/POS SOLUTION/CWS-A9.png','CWS-A9',11),(6,'image/product/productmodel/Customized Solutions/choice.png','Choice',12);
/*!40000 ALTER TABLE `productmodel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-20 16:55:37
