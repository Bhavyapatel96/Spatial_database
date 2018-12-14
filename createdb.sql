CREATE DATABASE  IF NOT EXISTS `publicsafety` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `publicsafety`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: publicsafety
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `incident`
--

DROP TABLE IF EXISTS `incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `incident` (
  `ID` int(11) NOT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Location` point NOT NULL,
  PRIMARY KEY (`ID`),
  SPATIAL KEY `Location` (`Location`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident`
--

LOCK TABLES `incident` WRITE;
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
INSERT INTO `incident` VALUES (729,'\"Illness Response\"',_binary '\0\0\0\0\0\0\03Š\å–V’]Àmu9% A@'),(714,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0÷_˜L’]À{× /½A@'),(285,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0\Âk—6’]ÀTœˆ~A@'),(808,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0«\Ë)1’]ÀM÷:©/A@'),(524,'\"Burglary\"',_binary '\0\0\0\0\0\0\0]k\ïSU’]À\Û÷¨¿^A@'),(418,'\"Disturbance\"',_binary '\0\0\0\0\0\0\0‹3†9A’]Àø4\'/2A@'),(916,'\"Alcohol/Drug Overdose\"',_binary '\0\0\0\0\0\0\0€e¥I)’]Àğ1XqªA@'),(510,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0—<–’]ÀQö–r¾A@'),(602,'\"Traffic Collision-Bicycle\"',_binary '\0\0\0\0\0\0\0yt#,*’]ÀüŠ5\\\äA@'),(784,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0\èiÀ \é’]À\Ş\å\"¾A@'),(275,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0{\Øl’]À°\É\ZõA@'),(796,'\"Fire Alarm Activation\"',_binary '\0\0\0\0\0\0\0Ú©¹\Ü`’]À\ß—ª´A@'),(250,'\"Battery\"',_binary '\0\0\0\0\0\0\0•~\ÂÙ­’]ÀºöôA@'),(766,'\"Grand Theft\"',_binary '\0\0\0\0\0\0\0ö{b’]À\r\Ğ\ÒA@'),(527,'\"Burglary\"',_binary '\0\0\0\0\0\0\0\Ğ{c\0’]À\ãÿ¨PA@'),(105,'\"Battery\"',_binary '\0\0\0\0\0\0\0%=­N’]À\É»š<A@'),(470,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0\r\ßÂºñ‘]À6\Çe\ÜA@'),(264,'\"Illness Response\"',_binary '\0\0\0\0\0\0\0ÜœJ€’]ÀnÀ\ç‡A@'),(790,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0‚<»|\ë‘]À4I,)wA@'),(923,'\"Vandalism\"',_binary '\0\0\0\0\0\0\0:¯±KT’]Àõ»°5A@'),(263,'\"Grand Theft\"',_binary '\0\0\0\0\0\0\0’;l\"3’]À\è¼\Æ.QA@'),(156,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\05Dş’]ÀşHVA@'),(804,'\"Fire Alarm Activation\"',_binary '\0\0\0\0\0\0\0\Ä\'H0’]Àû\Ë\î\ÉA@'),(560,'\"Alcohol/Drug Overdose\"',_binary '\0\0\0\0\0\0\0GV~Œ’]Àu­½OUA@'),(361,'\"Traffic Collision-Bicycle\"',_binary '\0\0\0\0\0\0\0²J\é™^’]À²~31A@'),(773,'\"Fire Alarm Malfunction\"',_binary '\0\0\0\0\0\0\0BB”/h’]Àõ*2: A@'),(745,'\"Robbery\"',_binary '\0\0\0\0\0\0\0\Ş„€’]Àa\à¹÷pA@'),(414,'\"Assault\"',_binary '\0\0\0\0\0\0\0±Ş¨¦’]À 3iSuA@'),(955,'\"Illness Response\"',_binary '\0\0\0\0\0\0\0\Ğ*3¥õ‘]À5~\á•$A@'),(481,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0›\Ó–’]ÀĞ¶šu\ÆA@');
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officer`
--

DROP TABLE IF EXISTS `officer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `officer` (
  `BadgeID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `SquadID` int(11) DEFAULT NULL,
  `Location` point NOT NULL,
  PRIMARY KEY (`BadgeID`),
  SPATIAL KEY `Location` (`Location`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officer`
--

LOCK TABLES `officer` WRITE;
/*!40000 ALTER TABLE `officer` DISABLE KEYS */;
INSERT INTO `officer` VALUES (983,'\"Blake Evans\"',5,_binary '\0\0\0\0\0\0\0‡§W\Ê2’]À\ÅTú	gA@'),(977,'\"Carson Lee\"',11,_binary '\0\0\0\0\0\0\0|^ñ‘]À\0\å\ï\ŞQA@'),(946,'\"Karen Thompson\"',2,_binary '\0\0\0\0\0\0\0-Í­V’]À\éš\É7\ÛA@'),(939,'\"Carlos Bauer\"',1,_binary '\0\0\0\0\0\0\0\Ì\ëˆC6’]À–&¥ \ÛA@'),(928,'\"Candace Weaver\"',8,_binary '\0\0\0\0\0\0\0)H4’]ÀN™›oDA@'),(899,'\"Colt Vargas\"',10,_binary '\0\0\0\0\0\0\0uXá–’]À‹ù¹¡)A@'),(873,'\"Kalia Suarez\"',7,_binary '\0\0\0\0\0\0\0˜Á‘(’]Àqªµ0A@'),(856,'\"Garrison Page\"',5,_binary '\0\0\0\0\0\0\0ùõC’]À\İ%qVDA@'),(756,'\"Denise Hall\"',3,_binary '\0\0\0\0\0\0\0Ç¡~¶’]Àk\Ö\ßA@'),(752,'\"Kendall Ramirez\"',11,_binary '\0\0\0\0\0\0\0ÿ\Îö\è\r’]À\Í\èG\Ã)A@'),(716,'\"Jeremy Sanford\"',3,_binary '\0\0\0\0\0\0\0‚Õ°ß’]ÀHnMº-A@'),(699,'\"Igor Hendrix\"',1,_binary '\0\0\0\0\0\0\0Ôµö>U’]À–\ëm3A@'),(661,'\"Malik Little\"',8,_binary '\0\0\0\0\0\0\0K\äõ`’]ÀÂ¢\"N\'A@'),(694,'\"Clarke Gains\"',5,_binary '\0\0\0\0\0\0\0HQg\î!’]À˜¦pzA@'),(678,'\"Rudyard Harrison\"',4,_binary '\0\0\0\0\0\0\0&s,ïª’]ÀÀ³=z\ÃA@'),(651,'\"Leroy Brock\"',7,_binary '\0\0\0\0\0\0\0Ù–g)’]À\ÖT…A@'),(588,'\"Iris Carver\"',6,_binary '\0\0\0\0\0\0\0-°\ÇDJ’]À\Æ\Â9}A@'),(566,'\"Thomas Frazier\"',7,_binary '\0\0\0\0\0\0\0…\"\İ\Ï)’]À\áz®GA@'),(523,'\"Jonathan Carpenter\"',8,_binary '\0\0\0\0\0\0\0Äµ\Ú\Ã^’]ÀŠV\îfA@'),(491,'\"Jillian Snow\"',10,_binary '\0\0\0\0\0\0\0\íÿ°¥’]À\ÊR\ëıFA@'),(485,'\"Basil Stevens\"',6,_binary '\0\0\0\0\0\0\0‰—§s’]À[\ÏA@'),(453,'\"Mickey Wolfe\"',2,_binary '\0\0\0\0\0\0\0\é\Ó*úC’]À´Ø€A@'),(409,'\"Carol Webb\"',7,_binary '\0\0\0\0\0\0\0…zú’]À¢í˜º+A@'),(405,'\"Denton Ross\"',4,_binary '\0\0\0\0\0\0\0C\äôõ|’]À5{ A@'),(387,'\"Ignatius Hines\"',3,_binary '\0\0\0\0\0\0\0\Ù`\á$Í’]À‘_?\ÄA@'),(384,'\"Frank Jones\"',12,_binary '\0\0\0\0\0\0\0\èu’]À®ô\Úl¬A@'),(369,'\"Graham Noble\"',9,_binary '\0\0\0\0\0\0\0öD×…’]À&\Ä\\RµA@'),(341,'\"Steve Barlow\"',4,_binary '\0\0\0\0\0\0\0ºh\Èx”’]À\é\×\ÖOÿA@'),(327,'\"Lionel Shields\"',3,_binary '\0\0\0\0\0\0\0€F\éÒ¿’]À®€B=A@'),(318,'\"Earl Keaton\"',8,_binary '\0\0\0\0\0\0\0k¸\È=]’]À›kCA@'),(247,'\"Austin Baker\"',5,_binary '\0\0\0\0\0\0\0\ËfI’]ÀF\Ònô1A@'),(294,'\"Gary Abbott\"',7,_binary '\0\0\0\0\0\0\0û“ø\Ü	’]À#/kbA@'),(261,'\"Lyle Nevin\"',4,_binary '\0\0\0\0\0\0\0£\Ó0|’]À\r¹§«A@'),(242,'\"Emma Preston\"',8,_binary '\0\0\0\0\0\0\0õ\Û×s’]Àc+hZbA@'),(238,'\"Eugene Doyle\"',1,_binary '\0\0\0\0\0\0\0G\r6u’]À[\'.\Ç+A@'),(214,'\"Hanna Figueroa\"',11,_binary '\0\0\0\0\0\0\0…]=ğ‘]À]İ±\Ø&A@'),(202,'\"Dennis Mack\"',12,_binary '\0\0\0\0\0\0\0Ÿ9\ëS’]À¤\âÿ¨A@'),(197,'\"Demetrius Clay\"',1,_binary '\0\0\0\0\0\0\0 \ÔE\ne’]À•›¨¥¹A@'),(113,'\"Hector Velazquez\"',11,_binary '\0\0\0\0\0\0\0W#»Ò‘]Àc·\Ï*3A@'),(173,'\"Jackson Burks\"',5,_binary '\0\0\0\0\0\0\0%•C’]ÀAñc\Ì]A@');
/*!40000 ALTER TABLE `officer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `route` (
  `RouteNumber` int(11) NOT NULL,
  `NumberOfVertices` int(11) DEFAULT NULL,
  `RouteMap` linestring NOT NULL,
  PRIMARY KEY (`RouteNumber`),
  SPATIAL KEY `RouteMap` (`RouteMap`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (9,15,_binary '\0\0\0\0\0\0\0\0\0\0ƒ\Æ\ÕJm’]À\ïµ	WA@\îDŸHm’]ÀvdanA@pö”a’]À°\Ç\\nA@ASö\ç`’]À\Ò\Æ]ùVA@-$j\æ\\’]ÀN	6\İSA@œ‰¥\Ü_’]À\ê\'\êµJA@,‰\Ù{[’]ÀO²OcFA@ô¦o_’]À•<A@\ÏF\íHU’]ÀGW\rl3A@ªyN’]À\Õ*ª\Ø9A@\Ş?¬tD’]ÀH\ï\Ğ>ZA@E“F?’]À³/D‚UA@Àÿ\ì\ÍC’]À\ê/\Ì.EA@Nn‰4’]À \Î>’7A@€F¿w8’]À/\Ç\Æ+A@'),(13,11,_binary '\0\0\0\0\0\0\0\0\0\0%wf\ï’]À^ıû3SA@ó¨N	’]À6y…\ßXA@’•´\á’]À\İL\ÓUA@(’]ÀiQ¾¨mA@ıD¼1’]ÀZ„³rgA@\åU›’]À\0Wº‹LA@—f¼j’]ÀŒv(\È@A@\ê@ûõ’]À\æe\è.A@)0|õ‘]À›\Å\è\ÑA@uxÁ\æ‘]À!¾	ŠJA@v\êÌ‘]À\'\n4A@'),(8,11,_binary '\0\0\0\0\0\0\0\0\0\0ò±!\Ús’]À\ÙşRNA@q\Í\ë0€’]ÀTk›NA@i	^ƒ’]Àÿ\ï\áy]A@i	ËŠ’]À:\ÒdaA@‚?}}’]À)<±lA@d?ï’’]Àp^\çlA@nz^\r“’]À\â\ÚsrA@`«8’]Àf ‰rA@wŸ ’]À#\\N¤A@œ\ä\ÃÃ¦’]ÀBñ,G¤A@L\Âz¦’]Àz¶3ùòA@'),(3,6,_binary '\0\0\0\0\0\0\0\0\0\0\Üw¦q’]ÀE{\ÉGA@.[³q’]À\æ\0\Ïk¤A@¥q$“’]À»º÷9¤A@©\æº4“’]À|“p.A@\Z…Dœ~’]Ày:ñ-A@?£[L’]À\ëöA\íªA@'),(4,8,_binary '\0\0\0\0\0\0\0\0\0\0\Ûõ\Å3.’]Àl¡h½ŸA@ ˜\éw¦’]À\Ø\ãùŸA@3²p¦’]À’Œ$…A@ ÷şº.’]À V„A@±.}.’]Àm¤]fGA@Q}8¨#’]À¹•FA@l\Ä\î’]Ào&M<A@u–Œ,(’]Àó‡ImA@'),(6,10,_binary '\0\0\0\0\0\0\0\n\0\0\0¤ü\Ñd’]À\Ç”¤A@b,Whe’]ÀB\n>‡\ÂA@İ\Å.’]ÀŠ“¹ÁA@vŒy.’]ÀøN39\áA@²ÿC;<’]ÀŒa4\áA@¬A!„<’]Àk‡^F\ZA@\è‚\éT’]À÷¹†‹/A@\\=\ÚT’]À`w\ås\áA@5†.e’]Àn?ƒ\áA@QË™d’]À‘H/A@');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zone` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `SquadID` int(11) DEFAULT NULL,
  `NumberOfVertices` int(11) DEFAULT NULL,
  `ZoneMap` polygon NOT NULL,
  PRIMARY KEY (`ID`),
  SPATIAL KEY `ZoneMap` (`ZoneMap`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES (42,'\"Ellendale / Menlo\"',4,4,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0-²ï§’]À\Õx\é&1A@-²ï§’]Àºk	ù A@-!ôl’]Àºk	ù A@-!ôl’]À\Õx\é&1A@-²ï§’]À\Õx\é&1A@'),(29,'\"Shrine\"',11,4,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\Ôİ¾Ë‘]À2ñ\05A@[cE\Îø‘]Àf(Œ¼\\A@Xv‚3’]À™i‚¶*A@@óU\ÌÚ‘]ÀC\ßD‰A@\Ôİ¾Ë‘]À2ñ\05A@'),(22,'\"University Ave\"',7,9,_binary '\0\0\0\0\0\0\0\0\0\0\n\0\0\0>Sh\Ï’]À ı²>8A@Xv‚3’]À™i‚¶*A@[cE\Îø‘]Àf(Œ¼\\A@¬§Œ¿!’]À<\ÜÃ€A@V-’]Àˆô\Û×A@V-’]À%•CA@µ¦y\Ç)’]À³\êsµA@V-’]À×£p=\nA@É—µ\ì\'’]À\ä‹/ÿA@>Sh\Ï’]À ı²>8A@'),(18,'\"29th / 30th\"',6,6,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0-²ï§’]Àºk	ù A@-²ï§’]ÀHPüsA@\ç§\èH’]ÀHPüsA@xz¥,C’]Àˆô\Û×A@V-’]Àˆô\Û×A@V-’]Àºk	ù A@-²ï§’]Àºk	ù A@'),(13,'\"Magnolia / Orchard\"',1,5,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0-!ôl’]À\Õx\é&1A@-!ôl’]Àºk	ù A@V-’]Àºk	ù A@V-’]À@¤ß¾A@\Ãdª`T’]À\Õx\é&1A@-!ôl’]À\Õx\é&1A@'),(9,'\"University Village\"',5,6,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0Ÿ«­\Ø_’]À—z6A@V-’]À×£p=\nA@µ¦y\Ç)’]À³\êsµA@V-’]À%•CA@V-’]Àˆô\Û×A@xz¥,C’]Àˆô\Û×A@Ÿ«­\Ø_’]À—z6A@'),(3,'\"Cardinal Gardens / Century Apartments\"',8,5,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0Š°\áé•’]ÀHPüsA@Š°\áé•’]À%•CA@C­i\Şq’]À%•CA@Ÿ«­\Ø_’]À—z6A@\ç§\èH’]ÀHPüsA@Š°\áé•’]ÀHPüsA@');
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-13  2:18:42
