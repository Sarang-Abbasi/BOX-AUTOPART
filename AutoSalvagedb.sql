-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: autosalvagedb
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `carrieradjustments`
--

DROP TABLE IF EXISTS `carrieradjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrieradjustments` (
  `AdjustmentID` int NOT NULL AUTO_INCREMENT,
  `SaleID` int NOT NULL,
  `AdjustmentDate` date DEFAULT NULL,
  `AdjustmentType` varchar(100) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT '0.00',
  `Description` text,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdjustmentID`),
  KEY `idx_sale` (`SaleID`),
  CONSTRAINT `carrieradjustments_ibfk_1` FOREIGN KEY (`SaleID`) REFERENCES `sales` (`SaleID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrieradjustments`
--

LOCK TABLES `carrieradjustments` WRITE;
/*!40000 ALTER TABLE `carrieradjustments` DISABLE KEYS */;
INSERT INTO `carrieradjustments` VALUES (1,2,'2024-02-01','Fuel Surcharge',15.00,'UPS fuel surcharge for January','2026-02-13 16:53:39'),(2,3,'2024-02-01','Oversize Fee',45.00,'FedEx oversize package fee','2026-02-13 16:53:39');
/*!40000 ALTER TABLE `carrieradjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ebaysynclog`
--

DROP TABLE IF EXISTS `ebaysynclog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ebaysynclog` (
  `SyncID` int NOT NULL AUTO_INCREMENT,
  `SyncDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `OrdersImported` int DEFAULT '0',
  `Status` varchar(50) DEFAULT 'Success',
  `ErrorMessage` text,
  PRIMARY KEY (`SyncID`),
  KEY `idx_sync_date` (`SyncDate`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebaysynclog`
--

LOCK TABLES `ebaysynclog` WRITE;
/*!40000 ALTER TABLE `ebaysynclog` DISABLE KEYS */;
INSERT INTO `ebaysynclog` VALUES (1,'2026-02-15 01:16:21',0,'Failed','Failed to get eBay orders: eBay API Error: InternalServerError - {\n  \"errors\": [\n    {\n      \"errorId\": 1004,\n      \"domain\": \"OAuth\",\n      \"category\": \"REQUEST\",\n      \"message\": \"Internal error\",\n      \"longMessage\": \"Error processing the access token.\"\n    }\n  ]\n}'),(2,'2026-02-15 01:30:50',0,'Failed','Failed to get eBay orders: eBay API Error: BadRequest - {\"errors\":[{\"errorId\":30850,\"domain\":\"API_FULFILLMENT\",\"category\":\"REQUEST\",\"message\":\"The start and end dates can\'t be in the future\",\"parameters\":[{\"name\":\"filterName\",\"value\":\"creationdate\"},{\"name\":\"filterValue\",\"value\":\"[2026-01-16T01:30:47.029Z..2026-02-15T01:30:47.029Z]\"}]}]}'),(3,'2026-02-18 00:40:01',0,'Failed','Failed to get eBay orders: eBay API Error: InternalServerError - {\n  \"errors\": [\n    {\n      \"errorId\": 1004,\n      \"domain\": \"OAuth\",\n      \"category\": \"REQUEST\",\n      \"message\": \"Internal error\",\n      \"longMessage\": \"Error processing the access token.\"\n    }\n  ]\n}'),(4,'2026-02-19 01:51:13',0,'Failed','Failed to get eBay orders: eBay API Error: BadRequest - {\"errors\":[{\"errorId\":30850,\"domain\":\"API_FULFILLMENT\",\"category\":\"REQUEST\",\"message\":\"The start and end dates can\'t be in the future\",\"parameters\":[{\"name\":\"filterName\",\"value\":\"creationdate\"},{\"name\":\"filterValue\",\"value\":\"[2026-01-20T01:51:11.007Z..2026-02-19T01:51:11.007Z]\"}]}]}'),(5,'2026-02-19 01:51:33',0,'Failed','Failed to get eBay orders: eBay API Error: BadRequest - {\"errors\":[{\"errorId\":30850,\"domain\":\"API_FULFILLMENT\",\"category\":\"REQUEST\",\"message\":\"The start and end dates can\'t be in the future\",\"parameters\":[{\"name\":\"filterName\",\"value\":\"creationdate\"},{\"name\":\"filterValue\",\"value\":\"[2026-01-20T01:51:31.521Z..2026-02-19T01:51:31.521Z]\"}]}]}'),(6,'2026-02-20 00:14:42',0,'Failed','Failed to get eBay orders: eBay API Error: BadRequest - {\"errors\":[{\"errorId\":30850,\"domain\":\"API_FULFILLMENT\",\"category\":\"REQUEST\",\"message\":\"The start and end dates can\'t be in the future\",\"parameters\":[{\"name\":\"filterName\",\"value\":\"creationdate\"},{\"name\":\"filterValue\",\"value\":\"[2026-01-21T00:14:40.801Z..2026-02-20T00:14:40.801Z]\"}]}]}'),(7,'2026-02-23 23:59:47',0,'Failed','Failed to get eBay orders: eBay API Error: BadRequest - {\"errors\":[{\"errorId\":30850,\"domain\":\"API_FULFILLMENT\",\"category\":\"REQUEST\",\"message\":\"The start and end dates can\'t be in the future\",\"parameters\":[{\"name\":\"filterName\",\"value\":\"creationdate\"},{\"name\":\"filterValue\",\"value\":\"[2026-01-24T23:59:46.004Z..2026-02-23T23:59:46.004Z]\"}]}]}');
/*!40000 ALTER TABLE `ebaysynclog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts` (
  `PartID` int NOT NULL AUTO_INCREMENT,
  `VehicleID` int NOT NULL,
  `PartNumber` varchar(100) DEFAULT NULL,
  `PartName` varchar(255) NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Condition` varchar(50) DEFAULT 'Good',
  `Cost` decimal(10,2) DEFAULT '0.00',
  `ListPrice` decimal(10,2) DEFAULT '0.00',
  `Status` varchar(50) DEFAULT 'In Stock',
  `EbayListingID` varchar(100) DEFAULT NULL,
  `Notes` text,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PartID`),
  KEY `idx_status` (`Status`),
  KEY `idx_category` (`Category`),
  KEY `idx_vehicle` (`VehicleID`),
  CONSTRAINT `parts_ibfk_1` FOREIGN KEY (`VehicleID`) REFERENCES `vehicles` (`VehicleID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES (1,1,'ENG-CIV-2020-001','Engine Assembly 1.5L Turbo','Engine','Bay A-10','Excellent',1200.00,3500.00,'Listed',NULL,NULL,'2026-02-13 16:53:39'),(2,1,'DOOR-CIV-2020-FL','Front Left Door','Body','Shelf C-05','Good',150.00,450.00,'In Stock',NULL,NULL,'2026-02-13 16:53:39'),(3,2,'ECU-MUS-2019-001','Engine Control Module','Electrical','Shelf E-02','Excellent',120.00,380.00,'Sold',NULL,NULL,'2026-02-13 16:53:39'),(4,2,'TURBO-MUS-2019','Turbocharger Assembly','Engine','Bay A-08','Good',650.00,1850.00,'Listed',NULL,NULL,'2026-02-13 16:53:39'),(5,3,'SEAT-BMW-2018','Leather Seat Set (Front)','Interior','Bay B-12','Excellent',400.00,2200.00,'Reserved',NULL,NULL,'2026-02-13 16:53:39'),(6,4,'22','Seat','Body','Home','Salvage',1000.00,2000.00,'Sold',NULL,'aa','2026-02-13 16:58:35'),(7,5,'33100-TBA-A01','Front Headlight Assembly','Lighting','A-01','Good',50.00,150.00,'Sold',NULL,'','2026-02-19 19:24:05'),(8,2,'1774','Back Light','Lighting','Home','Excellent',50.00,100.00,'Sold',NULL,'','2026-02-22 15:16:10');
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `SaleID` int NOT NULL AUTO_INCREMENT,
  `PartID` int NOT NULL,
  `Platform` varchar(50) DEFAULT 'eBay',
  `OrderNumber` varchar(100) DEFAULT NULL,
  `SaleDate` datetime DEFAULT NULL,
  `SalePrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ShippingCharged` decimal(10,2) DEFAULT '0.00',
  `ShippingCost` decimal(10,2) DEFAULT '0.00',
  `EbayFee` decimal(10,2) DEFAULT '0.00',
  `PayPalFee` decimal(10,2) DEFAULT '0.00',
  `TaxCollected` decimal(10,2) DEFAULT '0.00',
  `BuyerName` varchar(255) DEFAULT NULL,
  `TrackingNumber` varchar(100) DEFAULT NULL,
  `Status` varchar(50) DEFAULT 'Processing',
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SaleID`),
  KEY `PartID` (`PartID`),
  KEY `idx_sale_date` (`SaleDate`),
  KEY `idx_platform` (`Platform`),
  KEY `idx_status` (`Status`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`PartID`) REFERENCES `parts` (`PartID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,3,'eBay','EB-2024-001234','2024-01-30 14:30:00',380.00,18.50,18.50,49.40,11.40,0.00,'mustangparts_mike','1Z999AA10123456784','Delivered','2026-02-13 16:53:39'),(2,4,'eBay','EB-2024-001235','2024-01-28 10:15:00',1850.00,85.00,100.00,240.50,55.50,0.00,'subie_tuner_joe','1Z999AA10123456785','Delivered','2026-02-13 16:53:39'),(3,5,'eBay','EB-2024-001236','2024-01-26 16:45:00',2200.00,250.00,295.00,286.00,66.00,0.00,'bmw_interior_shop','1Z999AA10123456786','Shipped','2026-02-13 16:53:39'),(4,6,'Local Sale',NULL,'2026-02-15 00:00:00',2500.00,50.00,50.00,0.00,0.00,0.00,'Sarang','11','Delivered','2026-02-14 19:13:50'),(5,7,'eBay','SANDBOX-ORDER-001','2026-02-20 00:30:46',150.00,15.00,12.00,19.88,3.83,12.75,'testbuyer123','9400111899562718048888','Delivered','2026-02-19 19:30:46');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `VehicleID` int NOT NULL AUTO_INCREMENT,
  `Year` int NOT NULL,
  `Make` varchar(100) NOT NULL,
  `Model` varchar(100) NOT NULL,
  `VIN` varchar(17) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `PurchaseCost` decimal(10,2) DEFAULT '0.00',
  `BuyerName` varchar(255) DEFAULT NULL,
  `Notes` text,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`VehicleID`),
  KEY `idx_year` (`Year`),
  KEY `idx_make` (`Make`),
  KEY `idx_model` (`Model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,2020,'Honda','Civic','JH4KA8170MC000001','2024-01-15',3500.00,NULL,'Minor front damage, good engine','2026-02-13 16:53:39'),(2,2019,'Ford','Mustang','JHMCM56557C011111','2024-02-01',8500.00,NULL,'Excellent condition','2026-02-13 16:53:39'),(3,2018,'BMW','X5','WBAFR7C50EC222222','2024-01-20',12000.00,NULL,'Rear end collision','2026-02-13 16:53:39'),(4,2020,'BMW','V8',NULL,'2026-02-13',0.00,NULL,NULL,'2026-02-13 16:58:35'),(5,2020,'Honda','Civic','1HGBH41JXMN109186','2026-02-20',50000.00,NULL,'','2026-02-19 19:22:45'),(6,2026,'Hyundai','Elentra','12223412','2025-11-04',50000.00,NULL,'','2026-02-22 15:26:36');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-25 16:32:31
