-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: Inventory
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `Operator`
--

DROP TABLE IF EXISTS `Operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Operator` (
  `OperatorID` int(11) NOT NULL AUTO_INCREMENT,
  `OName` varchar(45) DEFAULT NULL,
  `Permission` int(11) NOT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OperatorID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Operator`
--

LOCK TABLES `Operator` WRITE;
/*!40000 ALTER TABLE `Operator` DISABLE KEYS */;
INSERT INTO `Operator` VALUES (1,'Winnie',1,'22334455'),(2,'Brown',1,'24567345'),(3,'Vera',1,'14345665'),(4,'Jane',0,'23456633'),(5,'Jim',1,'34562434'),(6,'Tom',1,'66658922'),(7,'Mike',0,'22233344'),(8,'Chris',0,'77283452'),(9,'Cynthia',1,'88889999'),(10,'Thomas',1,'22223333'),(11,'Amy',0,'22334411'),(12,'Bob',1,'88990011'),(13,'Dabby',1,'99991111'),(14,'Ella',0,'00112233'),(15,'Glenn',1,'00009999'),(16,'Helen',0,'11221122'),(17,'Kim',1,'88888777'),(18,'Lily',1,'99922221'),(19,'Penny',1,'21123535'),(20,'Rick',0,'11233411'),(21,'Michonne',1,'12325522'),(22,'Frank',1,'12334251'),(23,'Selina',1,'14235311'),(24,'Hebe',0,'12335321'),(25,'Adam',0,'34251222');
/*!40000 ALTER TABLE `Operator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StockIn`
--

DROP TABLE IF EXISTS `StockIn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StockIn` (
  `StockInID` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Dates` datetime DEFAULT NULL,
  PRIMARY KEY (`StockInID`),
  KEY `SupplierID_idx` (`SupplierID`),
  CONSTRAINT `SupplierID` FOREIGN KEY (`SupplierID`) REFERENCES `Supplier` (`SupplierID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StockIn`
--

LOCK TABLES `StockIn` WRITE;
/*!40000 ALTER TABLE `StockIn` DISABLE KEYS */;
INSERT INTO `StockIn` VALUES (1,1,'iPhone7',10000,'2017-04-18 00:00:00'),(2,1,'iPhone7S',15000,'2017-04-20 00:00:00'),(3,2,'Note7',20000,'2017-04-10 00:00:00'),(4,2,'Galaxy',18000,'2017-04-10 00:00:00'),(5,3,'P10',12000,'2017-04-10 00:00:00'),(6,4,'Beats Solo2',5000,'2016-10-01 00:00:00'),(7,4,'Beats Solo3',8000,'2017-01-10 00:00:00'),(8,4,'Beats urBeats',5000,'2016-04-09 00:00:00'),(9,5,'\nLUMIX GX85',10000,'2017-03-10 00:00:00'),(10,5,'LUMIX G7',3000,'2016-10-12 00:00:00'),(11,6,'NW-WM1Z\n',7000,'2016-09-01 00:00:00'),(12,6,'NW-A30',6000,'2016-07-01 00:00:00'),(13,6,'NW-WS623 / NW-WS625\nNW-WS623 / NW-WS625\nNW-WS625',5000,'2016-12-01 00:00:00'),(14,7,'Nintendo Switch',20000,'2017-03-21 00:00:00'),(15,7,'Nintendo 3DS',10000,'2016-07-20 00:00:00'),(16,7,'Nintendo 2DS',8000,'2016-02-10 00:00:00'),(17,8,'24\" Class LED HDTV',200,'2017-02-01 00:00:00'),(18,9,'Surface Studio',1000,'2017-01-01 00:00:00'),(19,9,'Matebook',2000,'2017-04-04 00:00:00'),(20,9,'Dell XPS',1500,'2017-01-20 00:00:00');
/*!40000 ALTER TABLE `StockIn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StockInfo`
--

DROP TABLE IF EXISTS `StockInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StockInfo` (
  `ItemID` int(11) NOT NULL AUTO_INCREMENT,
  `SID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Dates` datetime DEFAULT NULL,
  PRIMARY KEY (`ItemID`),
  KEY `SupplierID_idx` (`SID`),
  CONSTRAINT `SID` FOREIGN KEY (`SID`) REFERENCES `Supplier` (`SupplierID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StockInfo`
--

LOCK TABLES `StockInfo` WRITE;
/*!40000 ALTER TABLE `StockInfo` DISABLE KEYS */;
INSERT INTO `StockInfo` VALUES (1,1,'iPhone7',10000,'2017-04-18 00:00:00'),(2,1,'iPhone7S',15000,'2017-04-20 00:00:00'),(3,2,'Note7',20000,'2017-04-10 00:00:00'),(5,3,'P10',12000,'2017-04-10 00:00:00'),(6,4,'Beats Solo2',5000,'2016-10-01 00:00:00'),(8,4,'Beats urBeats',5000,'2016-04-09 00:00:00'),(9,0,'\nLUMIX GX85',10000,'2017-03-10 00:00:00'),(10,0,'LUMIX G7',3000,'2016-10-12 00:00:00'),(11,6,'NW-WM1Z\n',7000,'2016-09-01 00:00:00'),(12,6,'NW-A30',6000,'2016-07-01 00:00:00'),(13,6,'NW-WS623 / NW-WS625\nNW-WS623 / NW-WS625\nNW-WS625',5000,'2016-12-01 00:00:00'),(14,7,'Nintendo Switch',20000,'2017-03-21 00:00:00'),(15,7,'Nintendo 3DS',10000,'2016-07-20 00:00:00'),(16,7,'Nintendo 2DS',8000,'2016-02-10 00:00:00'),(17,8,'24\" Class LED HDTV',200,'2017-02-01 00:00:00'),(18,9,'Surface Studio',1000,'2017-01-01 00:00:00'),(19,9,'Matebook',2000,'2017-04-04 00:00:00'),(20,6,'NWS645',1000,'2010-01-01 00:00:00');
/*!40000 ALTER TABLE `StockInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StockOut`
--

DROP TABLE IF EXISTS `StockOut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StockOut` (
  `StockOutID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemID` int(11) NOT NULL,
  `SName` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Dates` datetime DEFAULT NULL,
  PRIMARY KEY (`StockOutID`),
  KEY `ItemID_idx` (`ItemID`),
  CONSTRAINT `ItemID` FOREIGN KEY (`ItemID`) REFERENCES `StockInfo` (`ItemID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StockOut`
--

LOCK TABLES `StockOut` WRITE;
/*!40000 ALTER TABLE `StockOut` DISABLE KEYS */;
INSERT INTO `StockOut` VALUES (1,1,'iPhone7',10000,'2017-04-18 00:00:00'),(2,2,'iPhone7S',15000,'2017-04-20 00:00:00'),(3,3,'Note7',20000,'2017-04-10 00:00:00'),(5,5,'P10',12000,'2017-04-10 00:00:00'),(6,6,'Beats Solo2',5000,'2016-10-01 00:00:00'),(8,8,'Beats urBeats',5000,'2016-04-09 00:00:00'),(9,9,'\nLUMIX GX85',10000,'2017-03-10 00:00:00'),(10,10,'LUMIX G7',3000,'2016-10-12 00:00:00'),(11,11,'NW-WM1Z\n',7000,'2016-09-01 00:00:00'),(12,14,'Nintendo Switch',20000,'2017-03-21 00:00:00'),(13,17,'Nintendo 2DS',8000,'2016-02-10 00:00:00'),(14,18,'24\" Class LED HDTV',200,'2017-02-01 00:00:00'),(15,19,'Matebook',2000,'2017-04-04 00:00:00'),(16,20,'Dell XPS',1500,'2017-04-20 00:00:00');
/*!40000 ALTER TABLE `StockOut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supplier`
--

DROP TABLE IF EXISTS `Supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Supplier` (
  `SupplierID` int(11) NOT NULL AUTO_INCREMENT,
  `SName` varchar(255) DEFAULT NULL,
  `Manager` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplier`
--

LOCK TABLES `Supplier` WRITE;
/*!40000 ALTER TABLE `Supplier` DISABLE KEYS */;
INSERT INTO `Supplier` VALUES (1,'Apple Inc.','Cook','11223344'),(2,'SAMSUNG Inc.','Lee Byung-chul','22334455'),(3,'HUAWEI Inc.','Ren Zhengfei','33445566'),(4,'Beats','Cook','11223344'),(6,'Sony','Ibuka Masaru','32423523'),(7,'Nintendo','Yamauchi','23424222'),(8,'Haier','Zhang Ruimin','11223322'),(9,'Microsoft','Bill Gates','6666888'),(10,'Google','Larry Page','11113333'),(11,'Siemens','Ernst','12325325');
/*!40000 ALTER TABLE `Supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Warehouse`
--

DROP TABLE IF EXISTS `Warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Warehouse` (
  `WarehouseID` int(11) NOT NULL AUTO_INCREMENT,
  `OID` int(11) NOT NULL,
  `WName` varchar(45) DEFAULT NULL,
  `Dates` datetime DEFAULT NULL,
  PRIMARY KEY (`WarehouseID`),
  KEY `OperatorID_idx` (`OID`),
  CONSTRAINT `OID` FOREIGN KEY (`OID`) REFERENCES `Operator` (`OperatorID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Warehouse`
--

LOCK TABLES `Warehouse` WRITE;
/*!40000 ALTER TABLE `Warehouse` DISABLE KEYS */;
INSERT INTO `Warehouse` VALUES (1,1,'Warehouse No.1','2016-12-12 00:00:00'),(2,2,'Warehouse No.2','2016-11-12 00:00:00'),(3,6,'Warehouse No.3','2011-04-07 00:00:00'),(4,9,'Warehouse No.4','2000-10-10 00:00:00'),(5,3,'Warehouse No.5','2001-02-01 00:00:00'),(6,23,'Warehouse No.6','2007-05-01 00:00:00'),(7,20,'Warehouse No.7','2005-10-09 00:00:00'),(8,12,'Warehouse No.8','2010-09-01 00:00:00'),(9,15,'Warehouse No.9','2012-10-20 00:00:00'),(10,21,'Warehouse No.10','2015-10-09 00:00:00'),(11,17,'Warehouse No.11','2012-12-12 00:00:00'),(12,18,'Warehouse No.12','2014-05-10 00:00:00'),(13,8,'Warehouse No.13','2003-10-12 00:00:00'),(14,11,'Warehouse No.14','2009-09-09 00:00:00'),(15,18,'Warehouse No.15','2009-10-12 00:00:00'),(16,18,'Warehouse No.16','2000-01-01 00:00:00'),(17,18,'Warehouse No.17','1995-10-02 00:00:00'),(18,9,'Warehouse No.18','1992-01-01 00:00:00'),(19,9,'Warehouse No.19','1997-01-10 00:00:00'),(20,12,'Warehouse No.20','1999-01-20 00:00:00'),(21,9,'Warehouse No.21','2005-02-02 00:00:00'),(22,21,'Warehouse No.22','2008-08-08 00:00:00'),(23,9,'Warehouse No.23','2009-09-09 00:00:00'),(24,18,'Warehouse No.24','2002-01-01 00:00:00'),(25,4,'Warehouse No.25','2000-06-06 00:00:00');
/*!40000 ALTER TABLE `Warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `operators_warehouse`
--

DROP TABLE IF EXISTS `operators_warehouse`;
/*!50001 DROP VIEW IF EXISTS `operators_warehouse`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `operators_warehouse` AS SELECT 
 1 AS `OperatorID`,
 1 AS `OName`,
 1 AS `Permission`,
 1 AS `Phone`,
 1 AS `WarehouseID`,
 1 AS `OID`,
 1 AS `WName`,
 1 AS `Dates`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stock_over_num`
--

DROP TABLE IF EXISTS `stock_over_num`;
/*!50001 DROP VIEW IF EXISTS `stock_over_num`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `stock_over_num` AS SELECT 
 1 AS `SupplierID`,
 1 AS `SName`,
 1 AS `Manager`,
 1 AS `Phone`,
 1 AS `ItemID`,
 1 AS `SID`,
 1 AS `ProductName`,
 1 AS `Amount`,
 1 AS `Dates`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `supplier_stock`
--

DROP TABLE IF EXISTS `supplier_stock`;
/*!50001 DROP VIEW IF EXISTS `supplier_stock`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `supplier_stock` AS SELECT 
 1 AS `SupplierID`,
 1 AS `SName`,
 1 AS `Manager`,
 1 AS `Phone`,
 1 AS `ItemID`,
 1 AS `SID`,
 1 AS `ProductName`,
 1 AS `Amount`,
 1 AS `Dates`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `operators_warehouse`
--

/*!50001 DROP VIEW IF EXISTS `operators_warehouse`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `operators_warehouse` AS select `operator`.`OperatorID` AS `OperatorID`,`operator`.`OName` AS `OName`,`operator`.`Permission` AS `Permission`,`operator`.`Phone` AS `Phone`,`warehouse`.`WarehouseID` AS `WarehouseID`,`warehouse`.`OID` AS `OID`,`warehouse`.`WName` AS `WName`,`warehouse`.`Dates` AS `Dates` from (`operator` join `warehouse` on((`operator`.`OperatorID` = `warehouse`.`OID`))) group by `operator`.`OperatorID` having (count(0) >= 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stock_over_num`
--

/*!50001 DROP VIEW IF EXISTS `stock_over_num`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stock_over_num` AS select `supplier`.`SupplierID` AS `SupplierID`,`supplier`.`SName` AS `SName`,`supplier`.`Manager` AS `Manager`,`supplier`.`Phone` AS `Phone`,`stockinfo`.`ItemID` AS `ItemID`,`stockinfo`.`SID` AS `SID`,`stockinfo`.`ProductName` AS `ProductName`,`stockinfo`.`Amount` AS `Amount`,`stockinfo`.`Dates` AS `Dates` from (`supplier` join `stockinfo` on((`supplier`.`SupplierID` = `stockinfo`.`SID`))) where (`stockinfo`.`Amount` > 10000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `supplier_stock`
--

/*!50001 DROP VIEW IF EXISTS `supplier_stock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supplier_stock` AS select `supplier`.`SupplierID` AS `SupplierID`,`supplier`.`SName` AS `SName`,`supplier`.`Manager` AS `Manager`,`supplier`.`Phone` AS `Phone`,`stockinfo`.`ItemID` AS `ItemID`,`stockinfo`.`SID` AS `SID`,`stockinfo`.`ProductName` AS `ProductName`,`stockinfo`.`Amount` AS `Amount`,`stockinfo`.`Dates` AS `Dates` from (`supplier` join `stockinfo`) where (`supplier`.`SupplierID` = `stockinfo`.`SID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-22 21:55:26
