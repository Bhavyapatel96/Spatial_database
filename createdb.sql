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
INSERT INTO `incident` VALUES (729,'\"Illness Response\"',_binary '\0\0\0\0\0\0\03�\�V�]�mu9% A@'),(714,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0�_�L�]�{נ/�A@'),(285,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0\�k�6�]�T��~A@'),(808,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0�\�)1�]�M�:�/A@'),(524,'\"Burglary\"',_binary '\0\0\0\0\0\0\0]k\�SU�]�\����^A@'),(418,'\"Disturbance\"',_binary '\0\0\0\0\0\0\0�3�9A�]��4\'/2A@'),(916,'\"Alcohol/Drug Overdose\"',_binary '\0\0\0\0\0\0\0�e�I)�]��1Xq�A@'),(510,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0�<���]�Q��r�A@'),(602,'\"Traffic Collision-Bicycle\"',_binary '\0\0\0\0\0\0\0yt#,*�]���5\\\�A@'),(784,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0\�i� \�]�\�\�\"�A@'),(275,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0{\�l�]��\�\Z�A@'),(796,'\"Fire Alarm Activation\"',_binary '\0\0\0\0\0\0\0ک�\�`�]�\����A@'),(250,'\"Battery\"',_binary '\0\0\0\0\0\0\0�~\�٭�]����A@'),(766,'\"Grand Theft\"',_binary '\0\0\0\0\0\0\0�{b��]�\r\�\�A@'),(527,'\"Burglary\"',_binary '\0\0\0\0\0\0\0\�{c\0�]�\����PA@'),(105,'\"Battery\"',_binary '\0\0\0\0\0\0\0%=�N�]�\���<A@'),(470,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0\r\�º�]�6\�e\�A@'),(264,'\"Illness Response\"',_binary '\0\0\0\0\0\0\0ܜJ��]�n�\�A@'),(790,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0�<�|\�]�4I,)wA@'),(923,'\"Vandalism\"',_binary '\0\0\0\0\0\0\0:��KT�]����5A@'),(263,'\"Grand Theft\"',_binary '\0\0\0\0\0\0\0�;l\"3�]�\�\�.QA@'),(156,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\05D��]��HVA@'),(804,'\"Fire Alarm Activation\"',_binary '\0\0\0\0\0\0\0\�\'�H0�]��\�\�\�A@'),(560,'\"Alcohol/Drug Overdose\"',_binary '\0\0\0\0\0\0\0GV~��]�u��OUA@'),(361,'\"Traffic Collision-Bicycle\"',_binary '\0\0\0\0\0\0\0�J\�^�]���~31A@'),(773,'\"Fire Alarm Malfunction\"',_binary '\0\0\0\0\0\0\0BB�/h�]��*2: A@'),(745,'\"Robbery\"',_binary '\0\0\0\0\0\0\0\����]�a\��pA@'),(414,'\"Assault\"',_binary '\0\0\0\0\0\0\0�ި��]��3iSuA@'),(955,'\"Illness Response\"',_binary '\0\0\0\0\0\0\0\�*3���]�5~\�$A@'),(481,'\"Petty Theft\"',_binary '\0\0\0\0\0\0\0�\���]�ж�u\�A@');
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
INSERT INTO `officer` VALUES (983,'\"Blake Evans\"',5,_binary '\0\0\0\0\0\0\0��W\�2�]�\�T�	gA@'),(977,'\"Carson Lee\"',11,_binary '\0\0\0\0\0\0\0�|^�]�\0\�\�\�QA@'),(946,'\"Karen Thompson\"',2,_binary '\0\0\0\0\0\0\0-ͭV�]�\�\�7\�A@'),(939,'\"Carlos Bauer\"',1,_binary '\0\0\0\0\0\0\0\�\�C6�]��&��\�A@'),(928,'\"Candace Weaver\"',8,_binary '\0\0\0\0\0\0\0)H4��]�N��oDA@'),(899,'\"Colt Vargas\"',10,_binary '\0\0\0\0\0\0\0uXᖏ�]�����)A@'),(873,'\"Kalia Suarez\"',7,_binary '\0\0\0\0\0\0\0���(�]�q��0A@'),(856,'\"Garrison Page\"',5,_binary '\0\0\0\0\0\0\0��C�]�\�%qVDA@'),(756,'\"Denise Hall\"',3,_binary '\0\0\0\0\0\0\0ǡ~��]�k\�\�A@'),(752,'\"Kendall Ramirez\"',11,_binary '\0\0\0\0\0\0\0�\��\�\r�]�\�\�G\�)A@'),(716,'\"Jeremy Sanford\"',3,_binary '\0\0\0\0\0\0\0�հߒ]�HnM�-A@'),(699,'\"Igor Hendrix\"',1,_binary '\0\0\0\0\0\0\0Ե�>U�]��\�m3A@'),(661,'\"Malik Little\"',8,_binary '\0\0\0\0\0\0\0K\��`�]�¢\"N\'A@'),(694,'\"Clarke Gains\"',5,_binary '\0\0\0\0\0\0\0HQg\�!�]���pzA@'),(678,'\"Rudyard Harrison\"',4,_binary '\0\0\0\0\0\0\0&s,朗]���=z\�A@'),(651,'\"Leroy Brock\"',7,_binary '\0\0\0\0\0\0\0ٖg)�]�\�T�A@'),(588,'\"Iris Carver\"',6,_binary '\0\0\0\0\0\0\0-�\�DJ�]�\�\�9}A@'),(566,'\"Thomas Frazier\"',7,_binary '\0\0\0\0\0\0\0�\"\�\�)�]�\�z�GA@'),(523,'\"Jonathan Carpenter\"',8,_binary '\0\0\0\0\0\0\0ĵ\�\�^�]��V\�fA@'),(491,'\"Jillian Snow\"',10,_binary '\0\0\0\0\0\0\0\�����]�\�R\��FA@'),(485,'\"Basil Stevens\"',6,_binary '\0\0\0\0\0\0\0���s�]�[\��A@'),(453,'\"Mickey Wolfe\"',2,_binary '\0\0\0\0\0\0\0\�\�*�C�]��؀A@'),(409,'\"Carol Webb\"',7,_binary '\0\0\0\0\0\0\0�z��]��혺+A@'),(405,'\"Denton Ross\"',4,_binary '\0\0\0\0\0\0\0C\���|�]�5{�A@'),(387,'\"Ignatius Hines\"',3,_binary '\0\0\0\0\0\0\0\�`\�$͒]��_?\�A@'),(384,'\"Frank Jones\"',12,_binary '\0\0\0\0\0\0\0�\�u��]���\�l�A@'),(369,'\"Graham Noble\"',9,_binary '\0\0\0\0\0\0\0�Dׅ�]�&\�\\R�A@'),(341,'\"Steve Barlow\"',4,_binary '\0\0\0\0\0\0\0�h\�x��]�\�\�\�O�A@'),(327,'\"Lionel Shields\"',3,_binary '\0\0\0\0\0\0\0�F\�ҿ�]���B=A@'),(318,'\"Earl Keaton\"',8,_binary '\0\0\0\0\0\0\0k�\�=]�]���kCA@'),(247,'\"Austin Baker\"',5,_binary '\0\0\0\0\0\0\0\�fI�]�F\�n�1A@'),(294,'\"Gary Abbott\"',7,_binary '\0\0\0\0\0\0\0���\�	�]�#/kbA@'),(261,'\"Lyle Nevin\"',4,_binary '\0\0\0\0\0\0\0�\�0|�]�\r���A@'),(242,'\"Emma Preston\"',8,_binary '\0\0\0\0\0\0\0�\�ׁs�]�c+hZbA@'),(238,'\"Eugene Doyle\"',1,_binary '\0\0\0\0\0\0\0G\r6u�]�[\'.\�+A@'),(214,'\"Hanna Figueroa\"',11,_binary '\0\0\0\0\0\0\0�]=�]�]ݱ\�&A@'),(202,'\"Dennis Mack\"',12,_binary '\0\0\0\0\0\0\0�9\�S��]��\����A@'),(197,'\"Demetrius Clay\"',1,_binary '\0\0\0\0\0\0\0 \�E\ne�]������A@'),(113,'\"Hector Velazquez\"',11,_binary '\0\0\0\0\0\0\0W#�ґ]�c�\�*3A@'),(173,'\"Jackson Burks\"',5,_binary '\0\0\0\0\0\0\0%��C�]�A�c\�]A@');
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
INSERT INTO `route` VALUES (9,15,_binary '\0\0\0\0\0\0\0\0\0\0�\�\�Jm�]�\�	WA@\�D�Hm�]�vdanA@p��a�]��\�\\nA@AS�\�`�]�\�\�]�VA@-$j\�\\�]�N	6\�SA@���\�_�]�\�\'\�JA@,�\�{[�]�O�OcFA@��o_�]��<A@\�F\�HU�]�GW\rl3A@�yN�]�\�*�\�9A@\�?�tD�]�H\�\�>ZA@E�F?�]��/D�UA@��\�\�C�]�\�/\�.EA@Nn�4�]��\�>�7A@�F�w8�]�/\�\�+A@'),(13,11,_binary '\0\0\0\0\0\0\0\0\0\0%wf\��]�^��3SA@�N	�]�6y�\�XA@���\��]�\�L\�UA@(�]�iQ��mA@�D�1�]�Z��rgA@\�U��]�\0W��LA@�f�j�]��v(\�@A@\�@���]��\�e\�.A@)0|��]��\�\�\�A@ux�\�]�!�	�JA@v�\�̑]�\'\n4A@'),(8,11,_binary '\0\0\0\0\0\0\0\0\0\0�!\�s�]�\��R�NA@q\�\�0��]�Tk�NA@i	^��]��\�\�y]A@�i	ˊ�]�:\�daA@�?}}��]�)<��lA@d?�]�p^\�lA@nz^\r��]�\�\�srA@`�8��]�f��rA@w� ��]�#\\N�A@�\�\�æ�]�B�,G�A@L\�z��]�z�3��A@'),(3,6,_binary '\0\0\0\0\0\0\0\0\0\0\�w�q�]�E{\�GA@.[�q�]�\�\0\�k�A@�q�$��]����9�A@�\�4��]�|�p.A@\Z�D�~�]�y:�-A@?�[L�]�\��A\�A@'),(4,8,_binary '\0\0\0\0\0\0\0\0\0\0\��\�3.�]�l�h��A@ �\�w��]�\�\���A@3�p��]���$�A@����.�]�� V�A@�.}.�]�m�]fGA@Q}8�#�]���FA@l\�\��]�o&M<A@u��,(�]��ImA@'),(6,10,_binary '\0\0\0\0\0\0\0\n\0\0\0���\�d�]�\���A@b,Whe�]�B\n>�\�A@ݏ\�.�]�����A@v�y.�]��N39\�A@��C;<�]��a4\�A@�A!�<�]�k�^F\ZA@\�\�T�]�����/A@\\=\�T�]�`w\�s\�A@5�.e�]�n?��\�A@Q˙d�]��H/A@');
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
INSERT INTO `zone` VALUES (42,'\"Ellendale / Menlo\"',4,4,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0-��戮]�\�x\�&1A@-��戮]��k	��A@-!�l�]��k	��A@-!�l�]�\�x\�&1A@-��戮]�\�x\�&1A@'),(29,'\"Shrine\"',11,4,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\�ݾˑ]�2��\05A@[cE\���]�f(��\\A@Xv�3�]��i��*A@@�U\�ڑ]�C\�D�A@\�ݾˑ]�2��\05A@'),(22,'\"University Ave\"',7,9,_binary '\0\0\0\0\0\0\0\0\0\0\n\0\0\0>Sh\��]����>8A@Xv�3�]��i��*A@[cE\���]�f(��\\A@����!�]�<\�ÀA@V-�]���\�ׁA@V-�]�%��CA@��y\�)�]��\�s�A@V-�]�ףp=\nA@ɗ�\�\'�]�\�/�A@>Sh\��]����>8A@'),(18,'\"29th / 30th\"',6,6,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0-��戮]��k	��A@-��戮]�HP�sA@\��\�H�]�HP�sA@xz�,C�]���\�ׁA@V-�]���\�ׁA@V-�]��k	��A@-��戮]��k	��A@'),(13,'\"Magnolia / Orchard\"',1,5,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0-!�l�]�\�x\�&1A@-!�l�]��k	��A@V-�]��k	��A@V-�]�@�߾A@\�d�`T�]�\�x\�&1A@-!�l�]�\�x\�&1A@'),(9,'\"University Village\"',5,6,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0���\�_�]���z6A@V-�]�ףp=\nA@��y\�)�]��\�s�A@V-�]�%��CA@V-�]���\�ׁA@xz�,C�]���\�ׁA@���\�_�]���z6A@'),(3,'\"Cardinal Gardens / Century Apartments\"',8,5,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0��\�镒]�HP�sA@��\�镒]�%��CA@C�i\�q�]�%��CA@���\�_�]���z6A@\��\�H�]�HP�sA@��\�镒]�HP�sA@');
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
