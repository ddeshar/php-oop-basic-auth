-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 192.168.10.2    Database: dss_project
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id_activities` bigint unsigned NOT NULL AUTO_INCREMENT,
  `activities_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_outputs` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_activities`),
  KEY `fk_activities_outputs1_idx` (`id_outputs`),
  CONSTRAINT `fk_activities_outputs1` FOREIGN KEY (`id_outputs`) REFERENCES `outputs` (`id_outputs`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,NULL,'Activity 1','Activity 1','archive','2023-01-30 01:51:26','2023-02-01 02:57:48',0),(3,NULL,'1 พัฒนาหลักสูตรฝึกอบรมด้านวิทยาศาสตร์และเทคโนโลยี','Act165','active','2023-01-31 02:43:51','2023-01-31 02:43:51',0),(4,NULL,'2 รับรองความสามารถบุคลากรด้านวิทยาศาสตร์และเทคโนโลยีตามมาตรฐานสากล','Act265','active','2023-01-31 02:44:09','2023-01-31 02:44:09',0),(5,NULL,'3 ถ่ายทอดเทคโนโลยีให้แก่ผู้ประกอบการและชุมชน','Act365','active','2023-01-31 02:44:25','2023-01-31 02:44:25',0),(6,NULL,'4 เพิ่มคุณภาพผลิตภัณฑ์วิสาหกิจขนาดกลางและขนาดย่อม','Act465','active','2023-01-31 02:44:45','2023-01-31 02:48:24',0),(7,NULL,'5 รับรองคุณภาพสินค้าและบริการเพื่อความปลอดภัยต่อผู้บริโภค','Act565','active','2023-01-31 02:44:57','2023-01-31 02:48:20',0),(8,NULL,'6 พัฒนาศักยภาพหน่วยตรวจสอบและรับรองเพื่อรองรับอุตสาหกรรมเป้าหมายของประเทศ','Act665','active','2023-01-31 02:45:16','2023-01-31 02:45:16',0),(9,NULL,'7 รับรองผลิตภัณฑ์นวัตกรรมเพื่อยกระดับคุณภาพชีวิตและเศรษฐกิจของประเทศ','Act765','active','2023-01-31 02:45:30','2023-01-31 02:45:30',0),(10,NULL,'8 ส่งเสริมการนำวิทยาศาสตร์และเทคโนโลยีเพื่อพัฒนางานตามโครงการพระราชดำริ','Act865','active','2023-01-31 02:45:48','2023-01-31 02:45:48',0),(11,NULL,'9 พัฒนาเกณฑ์กำหนดและมาตรฐานเพื่อรับรองคุณภาพผลิตภัณฑ์','Act965','active','2023-01-31 02:46:11','2023-01-31 02:46:11',0),(12,NULL,'10 การเพิ่มประสิทธิภาพการผลิตอาหารในเมืองนวัตกรรมอาหารเพื่อตอบสนองความต้องการผู้บริโภคยุค NewNormal','Act1065','active','2023-01-31 02:46:34','2023-01-31 02:46:34',0),(13,NULL,'11 พัฒนาห้องปฏิบัติการตรวจสอบมาตรฐานและรับรองคุณภาพของวัสดุอุปกรณ์ทางการแพทย์','Act1165','active','2023-01-31 02:46:49','2023-01-31 02:46:49',0),(14,NULL,'12 สร้างมาตรฐานการทดสอบเพื่อส่งเสริมอุตสาหกรรมยานยนต์สมัยใหม่การบินและหุ่นยนต์','Act1265','active','2023-01-31 02:47:13','2023-01-31 02:47:13',0),(15,NULL,'13 สร้างสนามทดสอบCAV Proving Ground','Act1365','active','2023-01-31 02:47:32','2023-01-31 02:47:32',0),(16,NULL,'14 กิจกรรมที่ส่งเสริมการรับรองระบบงานห้องปฏิบัติการของประเทศ','Act1465','active','2023-01-31 02:47:46','2023-01-31 02:48:12',0),(17,NULL,'15 เสริมสร้างขีดความสามารถห้องปฏิบัติการด้วยกิจกรรมทดสอบความชำนาญ','Act1565','active','2023-01-31 02:48:07','2023-01-31 02:48:07',0),(18,NULL,'16 พัฒนาระบบเชื่อมโยงเครือข่ายด้านโครงสร้างพื้นฐานด้านคุณภาพของประเทศ','Act1665','active','2023-01-31 02:49:10','2023-01-31 02:49:10',0),(19,NULL,'17 ยกระดับคุณภาพสินค้าชุมชนให้ได้มาตรฐาน','Act1765','active','2023-01-31 02:49:25','2023-01-31 02:49:25',0),(20,NULL,'18 กิจกรรมที่พัฒนาระบบสารสนเทศด้านววนเพื่ออุตสาหกรรมและวิสาหกิจชุมชน','Act1865','active','2023-01-31 02:49:42','2023-01-31 02:49:42',0),(21,NULL,'19 กิจกรรมที่เพิ่มประสิทธิภาพการบริหารงานด้วยระบบเทคโนโลยีสารสนเทศ','Act1965','active','2023-01-31 02:50:13','2023-01-31 02:50:13',0);
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_account`
--

DROP TABLE IF EXISTS `budget_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget_account` (
  `id_budget_account` int NOT NULL,
  `budget_account_no` json DEFAULT NULL,
  `budget_account_name` json DEFAULT NULL,
  `id_budget_account_Ref` int DEFAULT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isdetail` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_budget_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_account`
--

LOCK TABLES `budget_account` WRITE;
/*!40000 ALTER TABLE `budget_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_plans`
--

DROP TABLE IF EXISTS `budget_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget_plans` (
  `id_budget_plans` bigint unsigned NOT NULL AUTO_INCREMENT,
  `budget_plans_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_budget_plans`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_plans`
--

LOCK TABLES `budget_plans` WRITE;
/*!40000 ALTER TABLE `budget_plans` DISABLE KEYS */;
INSERT INTO `budget_plans` VALUES (1,NULL,'แผนงานพื้นฐาน','Basic Plan','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'แผนงานยุทธศาสตร์ [แผนงบประมาณ]','Strategic plan [Budget plan]','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,NULL,'แผนงานบูรณาการ [แผนงบประมาณ]','Integrated plan [Budget plan]','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `budget_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_types`
--

DROP TABLE IF EXISTS `budget_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget_types` (
  `id_budget_types` bigint unsigned NOT NULL AUTO_INCREMENT,
  `budget_types_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_budget_types`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_types`
--

LOCK TABLES `budget_types` WRITE;
/*!40000 ALTER TABLE `budget_types` DISABLE KEYS */;
INSERT INTO `budget_types` VALUES (1,NULL,'สำนักงานงบประมาณ','Budget Office','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'สกสว.','OSC.','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `budget_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components`
--

DROP TABLE IF EXISTS `components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components` (
  `id_components` bigint unsigned NOT NULL AUTO_INCREMENT,
  `components_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_components`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components`
--

LOCK TABLES `components` WRITE;
/*!40000 ALTER TABLE `components` DISABLE KEYS */;
INSERT INTO `components` VALUES (1,NULL,'V01 การลงทุน','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'V02 การผลิต','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,NULL,'V03 การตลาด','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counting_units`
--

DROP TABLE IF EXISTS `counting_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counting_units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counting_units`
--

LOCK TABLES `counting_units` WRITE;
/*!40000 ALTER TABLE `counting_units` DISABLE KEYS */;
INSERT INTO `counting_units` VALUES (1,'เปอร์เซ็นต์','Percentage','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,'ต่อปี','Per Year','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,'สะสม','Accumulate','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(4,'รายการ','รายการ','active','2023-01-30 04:19:47','2023-01-30 04:19:47'),(5,'ร้อยละ','ร้อยละ','active','2023-01-30 04:19:56','2023-01-30 04:19:56'),(6,'กลุ่มผลิตภัณฑ์','Group','active','2023-01-31 05:23:16','2023-01-31 05:23:16'),(7,'ล้านบาท','MB.','active','2023-02-01 03:42:14','2023-02-01 03:42:14');
/*!40000 ALTER TABLE `counting_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id_departments` bigint unsigned NOT NULL AUTO_INCREMENT,
  `departments_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_departments`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,NULL,'สำนักงานเลขานุการกรม (สล.)','Office of the Secretary of the Department (Lottery)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'กองเทคโนโลยีชุมชน (ทช.)','Community Technology Division (NSC)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,NULL,'กองบริหารและรับรองห้องปฏิบัติการ (บร.)','Executive Division and Laboratory (Bor.)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(4,NULL,'กองพัฒนาศักยภาพ นักวิทยาศาสตร์ห้องปฏิบัติการ (พ.ศ.)','Potential Development Division Scientists Laboratory (B.E.)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(5,NULL,'หองหอสมุดและศูนย์สารสนเทศวิทยาศาสตร์ และเทคโนโลยี (สท.)','Library and Information Center Science and Technology (SorThor.)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(6,NULL,'กองเคมีภัณฑ์และผลิตภัณฑ์อุปโภค (คอ.)','Chemical Division and Consumer Products (CO.)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(7,NULL,'กองวัสดุวิศวกรรม (วว.)','Division of Engineering Materials (TRF)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(8,NULL,'กองผลิตภัณฑ์อาหารและวัสดุสัมผัสอาหาร (อว.)','Division of food and food products (UD)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(9,NULL,'กองสอบเทียบเครื่องมือวัด (สค.)','Calculated Division (SUK)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(10,NULL,'กองบริหารจัดการทดสอบความชำนาญห้องปฏิบัติการ (บท.)','Exercise Management Division, Expert Room (Chapter)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(11,NULL,'กองตรวจและรับรองคุณภาพผลิตภัณฑ์ (รผ.)','Product Quality and Quality Certification (EGAT)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(12,NULL,'กองพัฒนาธุรกิจวิทยาศาสตร์บริการ (พธ.)','Division of Business Development Service (NACT)','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division_leaders`
--

DROP TABLE IF EXISTS `division_leaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `division_leaders` (
  `id_division_leaders` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_division_leaders`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division_leaders`
--

LOCK TABLES `division_leaders` WRITE;
/*!40000 ALTER TABLE `division_leaders` DISABLE KEYS */;
INSERT INTO `division_leaders` VALUES (1,'อธิบดี','Director General','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,'ผอ. สำนักงานเลขานุการกรม (สล.)','Director of the Office of the Secretary of the Department (Lottery)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,'ผอ. กองเทคโนโลยีชุมชน (ทช.)','Community Technology Division (NSC)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(4,'ผอ. กองบริหารและรับรองห้องปฏิบัติการ (บร.)','Director of the Laboratory Administration and Laboratory','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(5,'ผอ. กองพัฒนาศักยภาพ นักวิทยาศาสตร์ห้องปฏิบัติการ (พ.ศ.)','Director of Potential Development Division Scientists Laboratory (B.E.)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(6,'ผอ. หองหอสมุดและศูนย์สารสนเทศวิทยาศาสตร์ และเทคโนโลยี (สท.)','Director of the Library and Information Center Science and Technology (Sor.)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(7,'ผอ. กองเคมีภัณฑ์และผลิตภัณฑ์อุปโภค (คอ.)','Director of Chemical and Consumer Products (CO)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(8,'ผอ. กองวัสดุวิศวกรรม (วว.)','Director of Engineering Materials (Ministry of Engineering)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(9,'ผอ. กองผลิตภัณฑ์อาหารและวัสดุสัมผัสอาหาร (อว.)','Director of Food and Food Products Division (EA)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(10,'ผอ. กองสอบเทียบเครื่องมือวัด (สค.)','Director of the Aviation Division (SUK)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(11,'ผอ. กองบริหารจัดการทดสอบความชำนาญห้องปฏิบัติการ (บท.)','Director of the Executive Division Expert Laboratory (Chapter)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(12,'ผอ. กองตรวจและรับรองคุณภาพผลิตภัณฑ์ (รผ.)','Director of the Division of Product Quality (EGAT)','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(13,'ผอ. กองพัฒนาธุรกิจวิทยาศาสตร์บริการ (พธ.)','Director of the Science Business Development Division (NACT)','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `division_leaders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrepreneurships`
--

DROP TABLE IF EXISTS `entrepreneurships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrepreneurships` (
  `id_entrepreneurships` bigint unsigned NOT NULL AUTO_INCREMENT,
  `entrepreneurships_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_entrepreneurships`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrepreneurships`
--

LOCK TABLES `entrepreneurships` WRITE;
/*!40000 ALTER TABLE `entrepreneurships` DISABLE KEYS */;
INSERT INTO `entrepreneurships` VALUES (1,NULL,'อื่น','Others','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'อุตสาหกรรม','อุตสาหกรรม','active','2023-01-30 07:01:37','2023-01-30 07:01:37'),(3,NULL,'ธุรกิจชุมชน','ธุรกิจชุมชน','active','2023-01-30 07:01:51','2023-01-30 07:01:51'),(4,NULL,'การค้า','การค้า','active','2023-01-30 07:02:03','2023-01-30 07:02:03'),(5,NULL,'อาหาร','อาหาร','active','2023-02-01 02:55:04','2023-02-01 02:55:04');
/*!40000 ALTER TABLE `entrepreneurships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factors`
--

DROP TABLE IF EXISTS `factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factors` (
  `id_factors` bigint unsigned NOT NULL AUTO_INCREMENT,
  `factors_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_factors`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factors`
--

LOCK TABLES `factors` WRITE;
/*!40000 ALTER TABLE `factors` DISABLE KEYS */;
INSERT INTO `factors` VALUES (1,NULL,'F0101 นโยบายส่งเสริมการลงทุน','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'F0102 แหล่งเงินทุนเพื่อการวิจัยและ พัฒนานวัตกรรมสินค้าชีวภาพ','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,NULL,'F0103 การกระตุ้นให้เกิดอุตสาหกรรม ต่อเนื่องจากอุตสาหกรรมชีวภาพ','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fiscal_years`
--

DROP TABLE IF EXISTS `fiscal_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fiscal_years` (
  `id_fiscal_years` bigint unsigned NOT NULL AUTO_INCREMENT,
  `year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_fiscal_years`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fiscal_years`
--

LOCK TABLES `fiscal_years` WRITE;
/*!40000 ALTER TABLE `fiscal_years` DISABLE KEYS */;
INSERT INTO `fiscal_years` VALUES (1,'2565','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,'2566','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,'2567','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(4,'2568','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `fiscal_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goals`
--

DROP TABLE IF EXISTS `goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goals` (
  `id_goals` bigint unsigned NOT NULL AUTO_INCREMENT,
  `goals_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_strategic_issues` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_goals`),
  KEY `fk_goals_strategic_issues1_idx` (`id_strategic_issues`),
  CONSTRAINT `fk_goals_strategic_issues1` FOREIGN KEY (`id_strategic_issues`) REFERENCES `strategic_issues` (`id_strategic_issues`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goals`
--

LOCK TABLES `goals` WRITE;
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;
INSERT INTO `goals` VALUES (1,NULL,'1. เสริมสร้างศักยภาพกำลังคนด้านโครงสร้างพื้นฐานทางคุณภาพของประเทศ (NQI Academy)','NQI Academy','active','2023-01-30 02:10:58','2023-01-31 02:07:43',0),(2,NULL,'2. รับรองระบบงานที่เกี่ยวข้องกับห้องปฏิบัติการ ผลิตภัณฑ์ และนวัตกรรม รวมทั้งชุมชนที่แข่งขันได้ในเวทีโลก (CABs)','CABs','active','2023-01-31 02:08:28','2023-01-31 02:08:28',0),(3,NULL,'3 กำหนดหลักเกณฑ์ริเริ่มและเงื่อนไขสำหรับนวัตกรรมและการพัฒนาวิสาหกิจชุมชน (Specification for innovation and community)','Specification for innovation and community','active','2023-01-31 02:09:16','2023-01-31 02:09:16',0),(4,NULL,'4. พัฒนาและรับรองความสามารถห้องปฏิบัติการของประเทศ (Accreditation & PT)','Accreditation & PT','active','2023-01-31 02:09:35','2023-01-31 02:09:35',0),(5,NULL,'5. บริหารจัดการกลไกและระบบโครงสร้างพื้นฐานทางคุณภาพของประเทศ (System Integration)','System Integration','active','2023-01-31 02:10:19','2023-01-31 02:10:19',0),(6,NULL,'6. ถ่ายทอดเทคโนโลยีเพื่อยกระดับเศรษฐกิจฐานรากด้วย ววน.','DSS','active','2023-01-31 02:10:55','2023-01-31 02:10:55',0),(7,NULL,'7. พัฒนาการบริหารจัดการคลังข้อมูลข่าวสาร และการจัดการองค์การที่มีประสิทธิภาพตามหลักธรรมาภิบาล','DSS','active','2023-01-31 02:14:20','2023-01-31 02:14:20',0);
/*!40000 ALTER TABLE `goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicator_follow`
--

DROP TABLE IF EXISTS `indicator_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicator_follow` (
  `id_indicator_follow` int NOT NULL,
  `indicator_follow_no` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `en_name` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','archive') DEFAULT NULL,
  PRIMARY KEY (`id_indicator_follow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicator_follow`
--

LOCK TABLES `indicator_follow` WRITE;
/*!40000 ALTER TABLE `indicator_follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `indicator_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicators`
--

DROP TABLE IF EXISTS `indicators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicators` (
  `id_indicators` bigint unsigned NOT NULL AUTO_INCREMENT,
  `indicators_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_goals` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_indicators`),
  KEY `fk_indicators_goals1_idx` (`id_goals`),
  CONSTRAINT `fk_indicators_goals1` FOREIGN KEY (`id_goals`) REFERENCES `goals` (`id_goals`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicators`
--

LOCK TABLES `indicators` WRITE;
/*!40000 ALTER TABLE `indicators` DISABLE KEYS */;
INSERT INTO `indicators` VALUES (1,NULL,'ตัวชี้วัด','ตัวชี้วัด','active','2023-01-30 03:26:35','2023-01-30 03:26:35',0),(2,NULL,'1.1 จำนวนผู้เข้ารับการถ่ายทอดความรู้และเรียนรู้ ผ่านการเข้าร่วมกิจกรรม/ฝึกอบรม/แหล่งเรียนรู้ ตลอดจน การเข้าถึงสื่อในรูปแบบ Lifelong Learning (9,500คน)','KPI 1.165','active','2023-01-31 02:20:05','2023-01-31 02:20:05',0),(3,NULL,'1.2 จำนวนบุคลากรที่ทำงาน ด้านวิทยาศาสตร์และเทคโนโลยี (309 คน)','KPI1.265','active','2023-01-31 02:20:34','2023-01-31 02:20:34',0),(4,NULL,'5.1 จำนวนผู้ประกอบการใหม่ และผู้ประกอบการวิสาหกิจขนาดกลางและขนาดย่อมที่ได้รับการพัฒนาและยกระดับความสามารถในการแข่งขัน (110 ราย)','KPI5.165','active','2023-01-31 02:20:55','2023-01-31 02:20:55',0),(5,NULL,'1.มูลค่าผลกระทบต่อเศรษฐกิจ สังคม และคุณภาพชีวิตที่เกิดจากการนำผลงานวิจัย และพัฒนานวัตกรรมไปใช้ประโยชน์ (315 ลบ.)','KPI165','active','2023-01-31 02:21:36','2023-01-31 02:21:36',0),(6,NULL,'2.จำนวนเรื่องที่เกิดจากการสร้างความร่วมมือระหว่างประเทศ (3 เรื่อง)','KPI265','active','2023-01-31 02:22:08','2023-01-31 02:22:08',0),(7,NULL,'3.จำนวนบทความที่ตีพิมพ์และเผยแพร่ในวารสารวิชาการระดับชาติและ นานาชาติ (42 เรื่อง)','KPI365','active','2023-01-31 02:22:28','2023-01-31 02:22:28',0),(8,NULL,'4.ร้อยละผลงานวิจัยและเทคโนโลยีพร้อมใช้ที่ถูกนำไปใช้ในการสร้างมูลค่าเชิงพาณิชย์ให้กับภาคการผลิตและบริการ และภาคธุรกิจ (ร้อยละ 12)','KPI465','active','2023-01-31 02:22:51','2023-01-31 02:22:51',0),(9,NULL,'5.จำนวนผลงานวิจัย พัฒนา  และนวัตกรรมที่สามารถนำไปยื่นขอจดทรัพย์สินทางปัญญา/บัญชีนวัตกรรมที่คณะกรรมการตรวจสอบคุณสมบัติผลงาน นวัตกรรมที่ขอขึ้นทะเบียนบัญชีนวัตกรรมไทยอนุมัติ และจัดส่งข้อมูลให้สำนักงบประมาณแล้ว (1 เรื่อง)','KPI565','active','2023-01-31 02:23:08','2023-01-31 02:23:08',0),(10,NULL,'6.ร้อยละของการให้บริการโครงสร้างพื้นฐานทางด้านวิทยาศาสตร์และเทคโนโลยีเพิ่มขึ้น (ร้อยละ 5)','KPI665','active','2023-01-31 02:23:28','2023-01-31 02:23:28',0),(11,NULL,'7.จำนวนผู้ประกอบการที่มาใช้ประโยชน์ในเขตนวัตกรรม (5 ราย)','KPI765','active','2023-01-31 02:23:47','2023-01-31 02:23:47',0),(12,NULL,'8.จำนวนรายการวัดของห้องปฏิบัติการที่ได้รับการพัฒนาและรับรองระบบงานตามมาตรฐานสากล (3,500 รายการ)','KPI865','active','2023-01-31 02:24:04','2023-01-31 02:24:04',0),(13,NULL,'9. หน่วยตรวจสอบและรับรองได้รับการเสริมสร้างความสามารถ  (360 ราย)','KPI965','active','2023-01-31 02:24:28','2023-01-31 02:24:28',0),(14,NULL,'6.1 มูลค่าผลกระทบทางสังคม ชุมชน และคุณภาพชีวิต (33 ลบ.)','KPI6.165','active','2023-01-31 02:24:51','2023-01-31 02:24:51',0),(15,NULL,'6.2 จำนวนชุมชน/ท้องถิ่นที่ อววน. เข้าไปช่วยพัฒนา (12 ชุมชน/ท้องถิ่น)','KPI6.265','active','2023-01-31 02:25:11','2023-01-31 02:25:11',0),(16,NULL,'7.1.ผลคะแนนเฉลี่ยระดับคุณธรรมและความโปร่งใส (ITA) ในการดำเนินงานของ อว. (87 คะแนน)','KPI7.165','active','2023-01-31 02:25:43','2023-01-31 02:25:43',0);
/*!40000 ALTER TABLE `indicators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_plan_under_strategies`
--

DROP TABLE IF EXISTS `master_plan_under_strategies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_plan_under_strategies` (
  `id_master_plan_under_strategies` bigint unsigned NOT NULL AUTO_INCREMENT,
  `master_plan_under_strategies_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_master_plan_under_strategies`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_plan_under_strategies`
--

LOCK TABLES `master_plan_under_strategies` WRITE;
/*!40000 ALTER TABLE `master_plan_under_strategies` DISABLE KEYS */;
INSERT INTO `master_plan_under_strategies` VALUES (1,NULL,'ยุทธศาสตร์ที่ 2 ยุทธศาสตร์ด้านการสร้างความสามารถในการแข่งขัน','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'ยุทธศาสตร์ที่ 4 ด้านการสร้างโอกาสและความเสมอภาคทางสังคม','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,NULL,'ยุทธศาสตร์ที่ 6 ด้านการปรับสมดุลและพัฒนาระบบการบริหารจัดการภาครัฐ','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(4,NULL,'ยุทธิ์ศาสตร์สร้างงาน','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `master_plan_under_strategies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `national_strategies`
--

DROP TABLE IF EXISTS `national_strategies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `national_strategies` (
  `id_national_strategies` bigint unsigned NOT NULL AUTO_INCREMENT,
  `national_strategies_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_national_strategies`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `national_strategies`
--

LOCK TABLES `national_strategies` WRITE;
/*!40000 ALTER TABLE `national_strategies` DISABLE KEYS */;
INSERT INTO `national_strategies` VALUES (1,NULL,'ยุทธศาสตร์ที่ 2 ยุทธศาสตร์ด้านการสร้างความสามารถในการแข่งขัน','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'ยุทธศาสตร์ที่ 4 ด้านการสร้างโอกาสและความเสมอภาคทางสังคม','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,NULL,'ยุทธศาสตร์ที่ 6 ด้านการปรับสมดุลและพัฒนาระบบการบริหารจัดการภาครัฐ','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(4,NULL,'ยุทธิ์ศาสตร์สร้างงาน','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `national_strategies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outputs`
--

DROP TABLE IF EXISTS `outputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outputs` (
  `id_outputs` bigint unsigned NOT NULL AUTO_INCREMENT,
  `outputs_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_indicators` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_outputs`),
  KEY `fk_outputs_indicators1_idx` (`id_indicators`),
  CONSTRAINT `fk_outputs_indicators1` FOREIGN KEY (`id_indicators`) REFERENCES `indicators` (`id_indicators`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outputs`
--

LOCK TABLES `outputs` WRITE;
/*!40000 ALTER TABLE `outputs` DISABLE KEYS */;
INSERT INTO `outputs` VALUES (1,NULL,'ผลผลิต/โครงการ','ผลผลิต/โครงการ','active','2023-01-30 03:26:43','2023-01-30 03:26:43',0),(2,NULL,'ผลผลิต 2  กลุ่มเป้าหมายได้รับการพัฒนาศักยภาพด้วยวิทยาศาสตร์ เทคโนโลยีและนวัตกรรม','P265','active','2023-01-31 02:26:29','2023-01-31 02:26:29',0),(3,NULL,'บูร 2  (SME) ค.1   โครงการส่งเสริมการใช้เทคโนโลยีและนวัตกรรม','P265','active','2023-01-31 02:26:51','2023-01-31 02:26:51',0),(4,NULL,'ผลผลิตที่3 : สินค้าได้รับการตรวจสอบ สอบเทียบคุณภาพ','P365','active','2023-01-31 02:27:36','2023-01-31 02:27:36',0),(5,NULL,'โครงการ ยค 4 โครงการพัฒนาศักยภาพหน่วยตรวจสอบและรับรองเพื่อรองรับอุตสาหกรรมเป้าหมายของประเทศ','P465','active','2023-01-31 02:27:54','2023-01-31 02:27:54',0),(6,NULL,'โครงการ ยค 3 โครงการส่งเสริมการนำ ววน. เพื่อพัฒนางานตามโครงการพระราชดำริ','P565','active','2023-01-31 02:28:14','2023-01-31 02:28:14',0),(7,NULL,'โครงการ ยค 1 โครงการพัฒนาเกณฑ์กำหนดและมาตรฐานเพื่อรองรับคุณภาพผลิตภัณฑ์','P665','active','2023-01-31 02:28:31','2023-01-31 02:28:31',0),(8,NULL,'บูร 1 (อุต) ค.1  โครงการเมืองนวัตกรรมอาหาร (Food Innopolis)และการพัฒนานักรบอุตสาหกรรมอาหารพันธ์ใหม่ (Food Warrior)','P765','active','2023-01-31 02:29:15','2023-01-31 02:29:15',0),(9,NULL,'บูร 1 (อุต) ค.2  โครงการ พัฒนาโครงสร้างพื้นฐานด้านคุณภาพและการตรวจสอบทางการแพทย์','P865','active','2023-01-31 02:29:32','2023-01-31 02:29:32',0),(10,NULL,'บูร 3  (EEC) ค.1  โครงการสร้างมาตรฐานการทดสอบเพื่อส่งเสริมอุตสาหกรรมยานยนต์สมัยใหม่ การบิน และหุ่นยนต์','P965','active','2023-01-31 02:29:51','2023-01-31 02:29:51',0),(11,NULL,'บูร 3  (EEC) ค.2 โครงการสร้างสนามทดสอบ CAV Proving Ground','P1065','active','2023-01-31 02:30:06','2023-01-31 02:30:06',0),(12,NULL,'ผลผลิตที่4 : ห้องปฏิบัติการที่ได้รับการพัฒนาและรับรองความสามารถ','P1165','active','2023-01-31 02:30:21','2023-01-31 02:30:21',0),(13,NULL,'โครงการ ยค 2  โครงการพัฒนาระบบเชื่อมโยงเครือข่ายด้านโครงสร้างพื้นฐานด้านคุณภาพของประเทศ','P1365','active','2023-01-31 02:30:42','2023-01-31 02:30:42',0),(14,NULL,'บูร 4 (ฐานราก) ค.1  โครงการพัฒนาผลิตภัณฑ์สินค้าชุมชน','P1365','active','2023-01-31 02:30:57','2023-01-31 02:30:57',0),(15,NULL,'ผลผลิตที่ 1 :  การบริหารจัดการองค์กรและการบริการสารสนเทศ ด้านวิทยาศาสตร์และเทคโนโลยี ให้มีประสิทธิภาพ','P1465','active','2023-01-31 02:31:15','2023-01-31 02:31:15',0);
/*!40000 ALTER TABLE `outputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pin_points`
--

DROP TABLE IF EXISTS `pin_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pin_points` (
  `id_pin_points` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pin_points_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pin_points`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pin_points`
--

LOCK TABLES `pin_points` WRITE;
/*!40000 ALTER TABLE `pin_points` DISABLE KEYS */;
INSERT INTO `pin_points` VALUES (1,NULL,'1. ไทยเป็นประเทศชั้นนำด้านสินค้าเกษตรและเกษตรแปรรูปมูลค่าสูง ','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'2. ไทยเป็นจุดหมายของการท่องเที่ยวที่เน้นคุณภาพและความยั่งยืน','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,NULL,'3. ไทยเป็นฐานการผลิตยานยนต์ไฟฟ้าที่สำคัญของโลก','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(4,NULL,'4. ไทยเป็นศูนย์กลางทางการแพทย์และสุขภาพมูลค่าสูง','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `pin_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_action_plans`
--

DROP TABLE IF EXISTS `project_action_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_action_plans` (
  `id_project_action_plans` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `weight_value` decimal(5,2) DEFAULT NULL,
  `counting_unit` varchar(45) DEFAULT NULL,
  `years` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_action_plans`),
  KEY `fk_project_action_plans_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_action_plans_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_action_plans`
--

LOCK TABLES `project_action_plans` WRITE;
/*!40000 ALTER TABLE `project_action_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_action_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_budget`
--

DROP TABLE IF EXISTS `project_budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_budget` (
  `id_project_budget` int NOT NULL,
  `year` int DEFAULT NULL,
  `budget_amount` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `d_budget_account` int NOT NULL,
  `id_project_indicator` int NOT NULL,
  PRIMARY KEY (`id_project_budget`),
  KEY `fk_project_budget_budget_account1_idx` (`d_budget_account`),
  KEY `fk_project_budget_project_indicator1_idx` (`id_project_indicator`),
  CONSTRAINT `fk_project_budget_budget_account1` FOREIGN KEY (`d_budget_account`) REFERENCES `budget_account` (`id_budget_account`),
  CONSTRAINT `fk_project_budget_project_indicator1` FOREIGN KEY (`id_project_indicator`) REFERENCES `project_indicator` (`id_project_indicator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_budget`
--

LOCK TABLES `project_budget` WRITE;
/*!40000 ALTER TABLE `project_budget` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_budget_disbursement_plans`
--

DROP TABLE IF EXISTS `project_budget_disbursement_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_budget_disbursement_plans` (
  `id_project_budget_disbursement_plans` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `whole_year` decimal(18,2) DEFAULT NULL,
  `first_quarter_1` int DEFAULT NULL,
  `first_quarter_2` int DEFAULT NULL,
  `first_quarter_3` int DEFAULT NULL,
  `second_quarter_1` int DEFAULT NULL,
  `second_quarter_2` int DEFAULT NULL,
  `second_quarter_3` int DEFAULT NULL,
  `third_quarter_1` int DEFAULT NULL,
  `third_quarter_2` int DEFAULT NULL,
  `third_quarter_3` int DEFAULT NULL,
  `fourth_quarter_1` int DEFAULT NULL,
  `fourth_quarter_2` int DEFAULT NULL,
  `fourth_quarter_3` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_project_action_plans` int NOT NULL,
  PRIMARY KEY (`id_project_budget_disbursement_plans`),
  KEY `fk_project_budget_disbursement_plans_project_action_plans1_idx` (`id_project_action_plans`),
  CONSTRAINT `fk_project_budget_disbursement_plans_project_action_plans1` FOREIGN KEY (`id_project_action_plans`) REFERENCES `project_action_plans` (`id_project_action_plans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_budget_disbursement_plans`
--

LOCK TABLES `project_budget_disbursement_plans` WRITE;
/*!40000 ALTER TABLE `project_budget_disbursement_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_budget_disbursement_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_budgets`
--

DROP TABLE IF EXISTS `project_budgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_budgets` (
  `id_project_budgets` int NOT NULL AUTO_INCREMENT,
  `year` int DEFAULT NULL,
  `budget` decimal(18,2) DEFAULT NULL,
  `off_budget` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `projects_id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_budgets`),
  KEY `fk_project_budgets_projects1_idx` (`projects_id_projects`),
  CONSTRAINT `fk_project_budgets_projects1` FOREIGN KEY (`projects_id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_budgets`
--

LOCK TABLES `project_budgets` WRITE;
/*!40000 ALTER TABLE `project_budgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_budgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_contact_people`
--

DROP TABLE IF EXISTS `project_contact_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_contact_people` (
  `id_project_contact_people` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_contact_people`),
  KEY `fk_project_contact_people_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_contact_people_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contact_people`
--

LOCK TABLES `project_contact_people` WRITE;
/*!40000 ALTER TABLE `project_contact_people` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contact_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_documents`
--

DROP TABLE IF EXISTS `project_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_documents` (
  `id_project_documents` bigint unsigned NOT NULL AUTO_INCREMENT,
  `document_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `projects_id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_documents`),
  KEY `fk_project_documents_projects1_idx` (`projects_id_projects`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_documents`
--

LOCK TABLES `project_documents` WRITE;
/*!40000 ALTER TABLE `project_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_11_1`
--

DROP TABLE IF EXISTS `project_from_11_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_11_1` (
  `id_project_from_11_1` int NOT NULL,
  `seq` int DEFAULT NULL,
  `training_course` varchar(255) DEFAULT NULL,
  `line_work` varchar(255) DEFAULT NULL,
  `day` int DEFAULT NULL,
  `people` int DEFAULT NULL,
  `amount_per_people` decimal(18,2) DEFAULT NULL,
  `amount_total` decimal(18,2) DEFAULT NULL,
  `benefits` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_11_1`),
  KEY `fk_project_from_11_1_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_from_11_1_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_11_1`
--

LOCK TABLES `project_from_11_1` WRITE;
/*!40000 ALTER TABLE `project_from_11_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_11_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_11_consultant`
--

DROP TABLE IF EXISTS `project_from_11_consultant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_11_consultant` (
  `id_project_from_11_consultant` int NOT NULL AUTO_INCREMENT,
  `objective` varchar(45) DEFAULT NULL,
  `benefits` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `projects_id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_11_consultant`),
  KEY `fk_project_from_11_consultant_projects1_idx` (`projects_id_projects`),
  CONSTRAINT `fk_project_from_11_consultant_projects1` FOREIGN KEY (`projects_id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_11_consultant`
--

LOCK TABLES `project_from_11_consultant` WRITE;
/*!40000 ALTER TABLE `project_from_11_consultant` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_11_consultant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_11_consultant_detail`
--

DROP TABLE IF EXISTS `project_from_11_consultant_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_11_consultant_detail` (
  `id_project_from_11_consultant_detail` int NOT NULL AUTO_INCREMENT,
  `titel` varchar(45) DEFAULT NULL,
  `seq` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `consult` varchar(45) DEFAULT NULL,
  `period` varchar(45) DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL,
  `total_amount` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_project_from_11_consultant` int NOT NULL,
  PRIMARY KEY (`id_project_from_11_consultant_detail`),
  KEY `fk_project_from_11_consultant_detail_project_from_11_consul_idx` (`id_project_from_11_consultant`),
  CONSTRAINT `fk_project_from_11_consultant_detail_project_from_11_consulta1` FOREIGN KEY (`id_project_from_11_consultant`) REFERENCES `project_from_11_consultant` (`id_project_from_11_consultant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_11_consultant_detail`
--

LOCK TABLES `project_from_11_consultant_detail` WRITE;
/*!40000 ALTER TABLE `project_from_11_consultant_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_11_consultant_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_11_detail_in`
--

DROP TABLE IF EXISTS `project_from_11_detail_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_11_detail_in` (
  `id_project_from_11_detail_in` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `type_fist` int DEFAULT NULL,
  `type_second` int DEFAULT NULL,
  `type_orther` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `qty_unit` varchar(45) DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL,
  `rate_unit` varchar(45) DEFAULT NULL,
  `amount_total` decimal(18,2) DEFAULT NULL,
  `offer_reduction` decimal(18,2) DEFAULT NULL,
  `remaining_budget` decimal(18,2) DEFAULT NULL,
  `government` varchar(45) DEFAULT NULL,
  `private` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_project_from_11` int NOT NULL,
  PRIMARY KEY (`id_project_from_11_detail_in`),
  KEY `fk_project_from_11_detail_project_from_111_idx` (`id_project_from_11`),
  CONSTRAINT `fk_project_from_11_detail_project_from_111` FOREIGN KEY (`id_project_from_11`) REFERENCES `project_from_11_in` (`id_project_from_11_in`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_11_detail_in`
--

LOCK TABLES `project_from_11_detail_in` WRITE;
/*!40000 ALTER TABLE `project_from_11_detail_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_11_detail_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_11_detail_out`
--

DROP TABLE IF EXISTS `project_from_11_detail_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_11_detail_out` (
  `id_project_from_11_detail` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `type_fist` int DEFAULT NULL,
  `type_second` int DEFAULT NULL,
  `type_orther` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `qty_unit` varchar(45) DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL,
  `rate_unit` varchar(45) DEFAULT NULL,
  `amount_total` decimal(18,2) DEFAULT NULL,
  `offer_reduction` decimal(18,2) DEFAULT NULL,
  `remaining_budget` decimal(18,2) DEFAULT NULL,
  `government` varchar(45) DEFAULT NULL,
  `private` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_project_from_11_out` int NOT NULL,
  PRIMARY KEY (`id_project_from_11_detail`),
  KEY `fk_project_from_11_detail_out_project_from_11_out1_idx` (`id_project_from_11_out`),
  CONSTRAINT `fk_project_from_11_detail_out_project_from_11_out1` FOREIGN KEY (`id_project_from_11_out`) REFERENCES `project_from_11_out` (`id_project_from_11_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_11_detail_out`
--

LOCK TABLES `project_from_11_detail_out` WRITE;
/*!40000 ALTER TABLE `project_from_11_detail_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_11_detail_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_11_in`
--

DROP TABLE IF EXISTS `project_from_11_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_11_in` (
  `id_project_from_11_in` int NOT NULL,
  `course` varchar(45) DEFAULT NULL,
  `objective` varchar(45) DEFAULT NULL,
  `target_group` varchar(45) DEFAULT NULL,
  `benefits` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_11_in`),
  KEY `fk_project_from_11_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_from_11_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_11_in`
--

LOCK TABLES `project_from_11_in` WRITE;
/*!40000 ALTER TABLE `project_from_11_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_11_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_11_out`
--

DROP TABLE IF EXISTS `project_from_11_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_11_out` (
  `id_project_from_11_out` int NOT NULL,
  `course` varchar(45) DEFAULT NULL,
  `objective` varchar(45) DEFAULT NULL,
  `target_group` varchar(45) DEFAULT NULL,
  `benefits` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_11_out`),
  KEY `fk_project_from_11_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_from_11_projects10` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_11_out`
--

LOCK TABLES `project_from_11_out` WRITE;
/*!40000 ALTER TABLE `project_from_11_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_11_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_F06`
--

DROP TABLE IF EXISTS `project_from_BG3_F06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_F06` (
  `id_project_from_BG3_F06` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_F06`),
  KEY `fk_project_from_BG3_F06_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_from_BG3_F06_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_F06`
--

LOCK TABLES `project_from_BG3_F06` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_F06` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_F06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_F07`
--

DROP TABLE IF EXISTS `project_from_BG3_F07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_F07` (
  `id_project_from_BG3_F07` int NOT NULL AUTO_INCREMENT,
  `operation` varchar(255) DEFAULT NULL,
  `knowledge` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `period_month` int DEFAULT NULL,
  `period_start` varchar(45) DEFAULT NULL,
  `period_end` varchar(45) DEFAULT NULL,
  `work_period` varchar(45) DEFAULT NULL,
  `work_period_amount` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_F07`),
  KEY `fk_project_from_BG3_F07_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_from_BG3_F07_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_F07`
--

LOCK TABLES `project_from_BG3_F07` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_F07` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_F07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_F07_detail`
--

DROP TABLE IF EXISTS `project_from_BG3_F07_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_F07_detail` (
  `id_project_from_BG3_F07_detail` int NOT NULL AUTO_INCREMENT,
  `seq` varchar(5) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `people` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_project_from_BG3_F07` int NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_F07_detail`),
  KEY `fk_project_from_BG3_F07_detail_project_from_BG3_F071_idx` (`id_project_from_BG3_F07`),
  CONSTRAINT `fk_project_from_BG3_F07_detail_project_from_BG3_F071` FOREIGN KEY (`id_project_from_BG3_F07`) REFERENCES `project_from_BG3_F07` (`id_project_from_BG3_F07`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_F07_detail`
--

LOCK TABLES `project_from_BG3_F07_detail` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_F07_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_F07_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_F08`
--

DROP TABLE IF EXISTS `project_from_BG3_F08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_F08` (
  `id_project_from_BG3_F08` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_F08`),
  KEY `fk_project_from_BG3_F08_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_from_BG3_F08_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_F08`
--

LOCK TABLES `project_from_BG3_F08` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_F08` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_F08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_F08_detail`
--

DROP TABLE IF EXISTS `project_from_BG3_F08_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_F08_detail` (
  `id_project_from_BG3_F08_detail` int NOT NULL,
  `seq` varchar(5) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_project_from_BG3_F08` int NOT NULL,
  `id_template_from_detail` int NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_F08_detail`),
  KEY `fk_project_from_BG3_F08_detail_project_from_BG3_F081_idx` (`id_project_from_BG3_F08`),
  KEY `fk_project_from_BG3_F08_detail_template_from_detail1_idx` (`id_template_from_detail`),
  CONSTRAINT `fk_project_from_BG3_F08_detail_project_from_BG3_F081` FOREIGN KEY (`id_project_from_BG3_F08`) REFERENCES `project_from_BG3_F08` (`id_project_from_BG3_F08`),
  CONSTRAINT `fk_project_from_BG3_F08_detail_template_from_detail1` FOREIGN KEY (`id_template_from_detail`) REFERENCES `template_from_detail` (`id_template_from_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_F08_detail`
--

LOCK TABLES `project_from_BG3_F08_detail` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_F08_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_F08_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_F09`
--

DROP TABLE IF EXISTS `project_from_BG3_F09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_F09` (
  `id_project_from_BG3_F09` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_F09`),
  KEY `fk_project_from_BG3_F08_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_from_BG3_F08_projects10` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_F09`
--

LOCK TABLES `project_from_BG3_F09` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_F09` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_F09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_F09_detail`
--

DROP TABLE IF EXISTS `project_from_BG3_F09_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_F09_detail` (
  `id_project_from_BG3_F09_detail` int NOT NULL,
  `seq` varchar(5) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `id_project_from_BG3_F09` int NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_F09_detail`),
  KEY `fk_project_from_BG3_F09_detail_project_from_BG3_F091_idx` (`id_project_from_BG3_F09`),
  CONSTRAINT `fk_project_from_BG3_F09_detail_project_from_BG3_F091` FOREIGN KEY (`id_project_from_BG3_F09`) REFERENCES `project_from_BG3_F09` (`id_project_from_BG3_F09`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_F09_detail`
--

LOCK TABLES `project_from_BG3_F09_detail` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_F09_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_F09_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_F10`
--

DROP TABLE IF EXISTS `project_from_BG3_F10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_F10` (
  `id_project_from_BG3_F10` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_F10`),
  KEY `fk_project_from_BG3_F08_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_from_BG3_F08_projects100` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_F10`
--

LOCK TABLES `project_from_BG3_F10` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_F10` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_F10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_F10_detail`
--

DROP TABLE IF EXISTS `project_from_BG3_F10_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_F10_detail` (
  `id_project_from_BG3_F10_detail` int NOT NULL,
  `seq` varchar(5) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `id_project_from_BG3_F10` int NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_F10_detail`),
  KEY `fk_project_from_BG3_F10_detail_project_from_BG3_F101_idx` (`id_project_from_BG3_F10`),
  CONSTRAINT `fk_project_from_BG3_F10_detail_project_from_BG3_F101` FOREIGN KEY (`id_project_from_BG3_F10`) REFERENCES `project_from_BG3_F10` (`id_project_from_BG3_F10`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_F10_detail`
--

LOCK TABLES `project_from_BG3_F10_detail` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_F10_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_F10_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_F11`
--

DROP TABLE IF EXISTS `project_from_BG3_F11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_F11` (
  `id_project_from_BG3_F11` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_F11`),
  KEY `fk_project_from_BG3_F08_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_from_BG3_F08_projects1000` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_F11`
--

LOCK TABLES `project_from_BG3_F11` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_F11` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_F11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_F11_detail`
--

DROP TABLE IF EXISTS `project_from_BG3_F11_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_F11_detail` (
  `id_project_from_BG3_F11_detail` int NOT NULL,
  `seq` varchar(5) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `id_project_from_BG3_F11` int NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_F11_detail`),
  KEY `fk_project_from_BG3_F11_detail_project_from_BG3_F111_idx` (`id_project_from_BG3_F11`),
  CONSTRAINT `fk_project_from_BG3_F11_detail_project_from_BG3_F111` FOREIGN KEY (`id_project_from_BG3_F11`) REFERENCES `project_from_BG3_F11` (`id_project_from_BG3_F11`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_F11_detail`
--

LOCK TABLES `project_from_BG3_F11_detail` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_F11_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_F11_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_FT08`
--

DROP TABLE IF EXISTS `project_from_BG3_FT08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_FT08` (
  `id_project_from_BG3_FT08` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `projects_id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_FT08`),
  KEY `fk_project_from_BG3_FT08_projects1_idx` (`projects_id_projects`),
  CONSTRAINT `fk_project_from_BG3_FT08_projects1` FOREIGN KEY (`projects_id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_FT08`
--

LOCK TABLES `project_from_BG3_FT08` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_FT08` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_FT08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_BG3_FT08_detail`
--

DROP TABLE IF EXISTS `project_from_BG3_FT08_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_BG3_FT08_detail` (
  `id_project_from_BG3_FT08_detail` int NOT NULL,
  `seq` varchar(5) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `framework` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `replace` varchar(45) DEFAULT NULL,
  `buy` varchar(45) DEFAULT NULL,
  `inactive` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_project_from_BG3_FT08` int NOT NULL,
  `id_template_from_detail` int NOT NULL,
  PRIMARY KEY (`id_project_from_BG3_FT08_detail`),
  KEY `fk_project_from_BG3_FT08_detail_project_from_BG3_FT081_idx` (`id_project_from_BG3_FT08`),
  KEY `fk_project_from_BG3_FT08_detail_template_from_detail1_idx` (`id_template_from_detail`),
  CONSTRAINT `fk_project_from_BG3_FT08_detail_project_from_BG3_FT081` FOREIGN KEY (`id_project_from_BG3_FT08`) REFERENCES `project_from_BG3_FT08` (`id_project_from_BG3_FT08`),
  CONSTRAINT `fk_project_from_BG3_FT08_detail_template_from_detail1` FOREIGN KEY (`id_template_from_detail`) REFERENCES `template_from_detail` (`id_template_from_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_BG3_FT08_detail`
--

LOCK TABLES `project_from_BG3_FT08_detail` WRITE;
/*!40000 ALTER TABLE `project_from_BG3_FT08_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_BG3_FT08_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_request_budget`
--

DROP TABLE IF EXISTS `project_from_request_budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_request_budget` (
  `id_project_from_request_budget` int NOT NULL AUTO_INCREMENT,
  `year` int DEFAULT NULL,
  `budget_amount` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_budget_account` int NOT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_request_budget`),
  KEY `fk_project_from_request_budget_budget_account1_idx` (`id_budget_account`),
  KEY `fk_project_from_request_budget_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_from_request_budget_budget_account1` FOREIGN KEY (`id_budget_account`) REFERENCES `budget_account` (`id_budget_account`),
  CONSTRAINT `fk_project_from_request_budget_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_request_budget`
--

LOCK TABLES `project_from_request_budget` WRITE;
/*!40000 ALTER TABLE `project_from_request_budget` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_request_budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_request_budget_detail`
--

DROP TABLE IF EXISTS `project_from_request_budget_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_request_budget_detail` (
  `id_project_from_request_budget_detail` int NOT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_project_from_request_budget` int NOT NULL,
  PRIMARY KEY (`id_project_from_request_budget_detail`),
  KEY `fk_project_from_request_budget_detail_project_from_request__idx` (`id_project_from_request_budget`),
  CONSTRAINT `fk_project_from_request_budget_detail_project_from_request_bu1` FOREIGN KEY (`id_project_from_request_budget`) REFERENCES `project_from_request_budget` (`id_project_from_request_budget`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_request_budget_detail`
--

LOCK TABLES `project_from_request_budget_detail` WRITE;
/*!40000 ALTER TABLE `project_from_request_budget_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_request_budget_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_spending_plan`
--

DROP TABLE IF EXISTS `project_from_spending_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_spending_plan` (
  `id_project_from_spending_plan` int NOT NULL AUTO_INCREMENT,
  `first_quarter_1` int DEFAULT NULL,
  `first_quarter_2` int DEFAULT NULL,
  `first_quarter_3` int DEFAULT NULL,
  `second_quarter_1` int DEFAULT NULL,
  `second_quarter_2` int DEFAULT NULL,
  `second_quarter_3` int DEFAULT NULL,
  `third_quarter_1` int DEFAULT NULL,
  `third_quarter_2` int DEFAULT NULL,
  `third_quarter_3` int DEFAULT NULL,
  `fourth_quarter_1` int DEFAULT NULL,
  `fourth_quarter_2` int DEFAULT NULL,
  `fourth_quarter_3` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  `id_budget_account` int NOT NULL,
  PRIMARY KEY (`id_project_from_spending_plan`),
  KEY `fk_project_from_spending_plan_projects1_idx` (`id_projects`),
  KEY `fk_project_from_spending_plan_budget_account1_idx` (`id_budget_account`),
  CONSTRAINT `fk_project_from_spending_plan_budget_account1` FOREIGN KEY (`id_budget_account`) REFERENCES `budget_account` (`id_budget_account`),
  CONSTRAINT `fk_project_from_spending_plan_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_spending_plan`
--

LOCK TABLES `project_from_spending_plan` WRITE;
/*!40000 ALTER TABLE `project_from_spending_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_spending_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_tor`
--

DROP TABLE IF EXISTS `project_from_tor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_tor` (
  `id_project_from_tor` int NOT NULL AUTO_INCREMENT,
  `seq` int DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `shop_detail` varchar(255) DEFAULT NULL,
  `brand_desc` varchar(255) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_from_tor`),
  KEY `fk_project_from_tor_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_from_tor_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_tor`
--

LOCK TABLES `project_from_tor` WRITE;
/*!40000 ALTER TABLE `project_from_tor` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_tor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_travel`
--

DROP TABLE IF EXISTS `project_from_travel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_travel` (
  `id_project_from_travel` int NOT NULL AUTO_INCREMENT,
  `year` varchar(45) DEFAULT NULL,
  `board_meeting` varchar(45) DEFAULT NULL,
  `cooperation_meeting` varchar(45) DEFAULT NULL,
  `orther_meeting` varchar(45) DEFAULT NULL,
  `orther_desc` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `objective` varchar(45) DEFAULT NULL,
  `period_day` varchar(45) DEFAULT NULL,
  `period_date` varchar(45) DEFAULT NULL,
  `necessity_reason` varchar(45) DEFAULT NULL,
  `benefits` varchar(45) DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  `registration_fee` varchar(45) DEFAULT NULL,
  `passport_fee` varchar(45) DEFAULT NULL,
  `visa_fee` varchar(45) DEFAULT NULL,
  `vehicle_cost` varchar(45) DEFAULT NULL,
  `orther_cost_desc` varchar(45) DEFAULT NULL,
  `orther_cost` varchar(45) DEFAULT NULL,
  `meeting_member` varchar(45) DEFAULT NULL,
  `meeting_agreement` varchar(45) DEFAULT NULL,
  `meeting_obligation` varchar(45) DEFAULT NULL,
  `meeting_orther` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_project_from_travel`),
  KEY `fk_project_from_travel_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_from_travel_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_travel`
--

LOCK TABLES `project_from_travel` WRITE;
/*!40000 ALTER TABLE `project_from_travel` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_travel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_travel_detail`
--

DROP TABLE IF EXISTS `project_from_travel_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_travel_detail` (
  `id_project_from_travel_detail` int NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_from_travel_id_project_from_travel` int NOT NULL,
  PRIMARY KEY (`id_project_from_travel_detail`),
  KEY `fk_project_from_travel_detail_project_from_travel1_idx` (`project_from_travel_id_project_from_travel`),
  CONSTRAINT `fk_project_from_travel_detail_project_from_travel1` FOREIGN KEY (`project_from_travel_id_project_from_travel`) REFERENCES `project_from_travel` (`id_project_from_travel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_travel_detail`
--

LOCK TABLES `project_from_travel_detail` WRITE;
/*!40000 ALTER TABLE `project_from_travel_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_travel_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_from_travel_expenses`
--

DROP TABLE IF EXISTS `project_from_travel_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_from_travel_expenses` (
  `id_project_from_travel_expenses` int NOT NULL,
  `type_plan` varchar(45) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `qty_people` int DEFAULT NULL,
  `qty_day` int DEFAULT NULL,
  `total_amount` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_project_from_travel_detail` int NOT NULL,
  PRIMARY KEY (`id_project_from_travel_expenses`),
  KEY `fk_project_from_travel_expenses_project_from_travel_detail1_idx` (`id_project_from_travel_detail`),
  CONSTRAINT `fk_project_from_travel_expenses_project_from_travel_detail1` FOREIGN KEY (`id_project_from_travel_detail`) REFERENCES `project_from_travel_detail` (`id_project_from_travel_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_from_travel_expenses`
--

LOCK TABLES `project_from_travel_expenses` WRITE;
/*!40000 ALTER TABLE `project_from_travel_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_from_travel_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_group_benefits`
--

DROP TABLE IF EXISTS `project_group_benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_group_benefits` (
  `id_project_group_benefits` int NOT NULL AUTO_INCREMENT,
  `project_entrepreneurship_ids` json DEFAULT NULL,
  `other_entrepreneurship` longtext,
  `group_government` longtext,
  `group_other` longtext,
  `expected_benefit_technology` longtext,
  `expected_benefit_economic` longtext,
  `expected_benefit_social` longtext,
  `expected_benefit_environmental` longtext,
  `expected_benefit_quality_of_life` longtext,
  `expected_benefit_security` longtext,
  `expected_benefit_other` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_group_benefits`),
  KEY `fk_project_group_benefits_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_group_benefits_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_group_benefits`
--

LOCK TABLES `project_group_benefits` WRITE;
/*!40000 ALTER TABLE `project_group_benefits` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_group_benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_guidelines`
--

DROP TABLE IF EXISTS `project_guidelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_guidelines` (
  `id_project_guidelines` int NOT NULL AUTO_INCREMENT,
  `principle_reason` longtext,
  `objective` longtext,
  `guidelines` longtext,
  `id_projects` bigint unsigned NOT NULL,
  `performance_details` longtext,
  `goals_indicators` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_project_guidelines`),
  KEY `fk_project_guidelines_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_guidelines_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_guidelines`
--

LOCK TABLES `project_guidelines` WRITE;
/*!40000 ALTER TABLE `project_guidelines` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_guidelines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_indicator`
--

DROP TABLE IF EXISTS `project_indicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_indicator` (
  `id_project_indicator` int NOT NULL AUTO_INCREMENT,
  `seq` int DEFAULT NULL,
  `indicator_title` varchar(45) DEFAULT NULL,
  `target_value` decimal(10,0) DEFAULT NULL,
  `calculation_method` varchar(45) DEFAULT NULL,
  `status` enum('active','archive') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_indicator_follow` int NOT NULL,
  `counting_units_id` bigint unsigned NOT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_indicator`),
  KEY `fk_project_indicator_indicator_follow1_idx` (`id_indicator_follow`),
  KEY `fk_project_indicator_counting_units1_idx` (`counting_units_id`),
  KEY `fk_project_indicator_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_indicator_counting_units1` FOREIGN KEY (`counting_units_id`) REFERENCES `counting_units` (`id`),
  CONSTRAINT `fk_project_indicator_indicator_follow1` FOREIGN KEY (`id_indicator_follow`) REFERENCES `indicator_follow` (`id_indicator_follow`),
  CONSTRAINT `fk_project_indicator_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_indicator`
--

LOCK TABLES `project_indicator` WRITE;
/*!40000 ALTER TABLE `project_indicator` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_indicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_indicator_follow`
--

DROP TABLE IF EXISTS `project_indicator_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_indicator_follow` (
  `id_project_indicator_follow` int NOT NULL AUTO_INCREMENT,
  `project_indicator_follow_type` varchar(45) DEFAULT NULL,
  `first_quarter_1` int DEFAULT NULL,
  `first_quarter_2` int DEFAULT NULL,
  `first_quarter_3` int DEFAULT NULL,
  `second_quarter_1` int DEFAULT NULL,
  `second_quarter_2` int DEFAULT NULL,
  `second_quarter_3` int DEFAULT NULL,
  `third_quarter_1` int DEFAULT NULL,
  `third_quarter_2` int DEFAULT NULL,
  `third_quarter_3` int DEFAULT NULL,
  `fourth_quarter_1` int DEFAULT NULL,
  `fourth_quarter_2` int DEFAULT NULL,
  `fourth_quarter_3` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_project_indicator` int NOT NULL,
  PRIMARY KEY (`id_project_indicator_follow`),
  KEY `fk_project_indicator_follow_project_indicator1_idx` (`id_project_indicator`),
  CONSTRAINT `fk_project_indicator_follow_project_indicator1` FOREIGN KEY (`id_project_indicator`) REFERENCES `project_indicator` (`id_project_indicator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_indicator_follow`
--

LOCK TABLES `project_indicator_follow` WRITE;
/*!40000 ALTER TABLE `project_indicator_follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_indicator_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_national_strategies`
--

DROP TABLE IF EXISTS `project_national_strategies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_national_strategies` (
  `id_project_national_strategies` bigint unsigned NOT NULL AUTO_INCREMENT,
  `national_strategy_ids` json DEFAULT NULL,
  `master_plan_under_strategy_ids` json DEFAULT NULL,
  `sub_chapter_master_plan_ids` json DEFAULT NULL,
  `target_ids` json DEFAULT NULL,
  `component_ids` json DEFAULT NULL,
  `pin_point_ids` json DEFAULT NULL,
  `project_output_id` bigint unsigned DEFAULT NULL,
  `project_activity_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_activities` bigint unsigned NOT NULL,
  `id_outputs` bigint unsigned NOT NULL,
  `id_goals` bigint unsigned NOT NULL,
  `id_strategic_issues` bigint unsigned NOT NULL,
  `id_indicators` bigint unsigned NOT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_project_national_strategies`),
  KEY `fk_project_national_strategies_activities1_idx1` (`id_activities`),
  KEY `fk_project_national_strategies_outputs1_idx1` (`id_outputs`),
  KEY `fk_project_national_strategies_goals1_idx1` (`id_goals`),
  KEY `fk_project_national_strategies_strategic_issues1_idx` (`id_strategic_issues`),
  KEY `fk_project_national_strategies_indicators1_idx` (`id_indicators`),
  KEY `fk_project_national_strategies_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_project_national_strategies_activities1` FOREIGN KEY (`id_activities`) REFERENCES `activities` (`id_activities`),
  CONSTRAINT `fk_project_national_strategies_goals1` FOREIGN KEY (`id_goals`) REFERENCES `goals` (`id_goals`),
  CONSTRAINT `fk_project_national_strategies_indicators1` FOREIGN KEY (`id_indicators`) REFERENCES `indicators` (`id_indicators`),
  CONSTRAINT `fk_project_national_strategies_outputs1` FOREIGN KEY (`id_outputs`) REFERENCES `outputs` (`id_outputs`),
  CONSTRAINT `fk_project_national_strategies_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`),
  CONSTRAINT `fk_project_national_strategies_strategic_issues1` FOREIGN KEY (`id_strategic_issues`) REFERENCES `strategic_issues` (`id_strategic_issues`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_national_strategies`
--

LOCK TABLES `project_national_strategies` WRITE;
/*!40000 ALTER TABLE `project_national_strategies` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_national_strategies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_outcome`
--

DROP TABLE IF EXISTS `project_outcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_outcome` (
  `id_project_outcome` int NOT NULL AUTO_INCREMENT,
  `short_term` int DEFAULT NULL,
  `long_term` int DEFAULT NULL,
  `processing_period` int DEFAULT NULL,
  `year_start` int DEFAULT NULL,
  `year_end` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_project_outcome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_outcome`
--

LOCK TABLES `project_outcome` WRITE;
/*!40000 ALTER TABLE `project_outcome` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_outcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_user_approvals`
--

DROP TABLE IF EXISTS `project_user_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_user_approvals` (
  `id_project_user_approvals` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` enum('approved','disapproved') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `signed_document` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_project_user_approvals`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_user_approvals`
--

LOCK TABLES `project_user_approvals` WRITE;
/*!40000 ALTER TABLE `project_user_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_user_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id_projects` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leader_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leader_contact_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `principle_and_reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `objective` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `operational_guidelines` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `operational_period` int DEFAULT NULL,
  `operational_period_start_year` int DEFAULT NULL,
  `operational_period_end_year` int DEFAULT NULL,
  `operation_area` json DEFAULT NULL,
  `sub_processing_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_status_id` bigint unsigned DEFAULT NULL,
  `performance_detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `achieved_goals` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qualitative_short_term` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qualitative_long_term` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('draft','archive','pending','approved','disapproved') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pdf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_departments` bigint unsigned NOT NULL,
  `id_budget_plans` bigint unsigned NOT NULL,
  `users_id` bigint unsigned NOT NULL,
  `id_budget_types` bigint unsigned NOT NULL,
  `id_type_project` int NOT NULL,
  `id_fiscal_years` bigint unsigned NOT NULL,
  `id_project_outcome` int NOT NULL,
  `id_project_ref` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_project_statuses` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_projects`),
  KEY `fk_projects_departments_idx` (`id_departments`),
  KEY `fk_projects_budget_plans1_idx` (`id_budget_plans`),
  KEY `fk_projects_users1_idx` (`users_id`),
  KEY `fk_projects_budget_types1_idx` (`id_budget_types`),
  KEY `fk_projects_type_project1_idx` (`id_type_project`),
  KEY `fk_projects_fiscal_years1_idx` (`id_fiscal_years`),
  KEY `fk_projects_project_outcome1_idx` (`id_project_outcome`),
  KEY `fk_projects_statuses1_idx` (`id_project_statuses`),
  CONSTRAINT `fk_projects_budget_plans1` FOREIGN KEY (`id_budget_plans`) REFERENCES `budget_plans` (`id_budget_plans`),
  CONSTRAINT `fk_projects_budget_types1` FOREIGN KEY (`id_budget_types`) REFERENCES `budget_types` (`id_budget_types`),
  CONSTRAINT `fk_projects_departments` FOREIGN KEY (`id_departments`) REFERENCES `departments` (`id_departments`),
  CONSTRAINT `fk_projects_fiscal_years1` FOREIGN KEY (`id_fiscal_years`) REFERENCES `fiscal_years` (`id_fiscal_years`),
  CONSTRAINT `fk_projects_project_outcome1` FOREIGN KEY (`id_project_outcome`) REFERENCES `project_outcome` (`id_project_outcome`),
  CONSTRAINT `fk_projects_statuses1` FOREIGN KEY (`id_project_statuses`) REFERENCES `statuses` (`id_project_statuses`),
  CONSTRAINT `fk_projects_type_project1` FOREIGN KEY (`id_type_project`) REFERENCES `type_project` (`id_type_project`),
  CONSTRAINT `fk_projects_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provinces` (
  `id_provinces` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_provinces`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES (1,'กรุงเทพมหานคร','Bangkok',NULL,NULL),(2,'สมุทรปราการ','Samut Prakan',NULL,NULL),(3,'นนทบุรี','Nonthaburi',NULL,NULL),(4,'ปทุมธานี','Pathum Thani',NULL,NULL),(5,'พระนครศรีอยุธยา','Phra Nakhon Si Ayutthaya',NULL,NULL),(6,'อ่างทอง','Ang Thong',NULL,NULL),(7,'ลพบุรี','Loburi',NULL,NULL),(8,'สิงห์บุรี','Sing Buri',NULL,NULL),(9,'ชัยนาท','Chai Nat',NULL,NULL),(10,'สระบุรี','Saraburi',NULL,NULL),(11,'ชลบุรี','Chon Buri',NULL,NULL),(12,'ระยอง','Rayong',NULL,NULL),(13,'จันทบุรี','Chanthaburi',NULL,NULL),(14,'ตราด','Trat',NULL,NULL),(15,'ฉะเชิงเทรา','Chachoengsao',NULL,NULL),(16,'ปราจีนบุรี','Prachin Buri',NULL,NULL),(17,'นครนายก','Nakhon Nayok',NULL,NULL),(18,'สระแก้ว','Sa Kaeo',NULL,NULL),(19,'นครราชสีมา','Nakhon Ratchasima',NULL,NULL),(20,'บุรีรัมย์','Buri Ram',NULL,NULL),(21,'สุรินทร์','Surin',NULL,NULL),(22,'ศรีสะเกษ','Si Sa Ket',NULL,NULL),(23,'อุบลราชธานี','Ubon Ratchathani',NULL,NULL),(24,'ยโสธร','Yasothon',NULL,NULL),(25,'ชัยภูมิ','Chaiyaphum',NULL,NULL),(26,'อำนาจเจริญ','Amnat Charoen',NULL,NULL),(27,'หนองบัวลำภู','Nong Bua Lam Phu',NULL,NULL),(28,'ขอนแก่น','Khon Kaen',NULL,NULL),(29,'อุดรธานี','Udon Thani',NULL,NULL),(30,'เลย','Loei',NULL,NULL),(31,'หนองคาย','Nong Khai',NULL,NULL),(32,'มหาสารคาม','Maha Sarakham',NULL,NULL),(33,'ร้อยเอ็ด','Roi Et',NULL,NULL),(34,'กาฬสินธุ์','Kalasin',NULL,NULL),(35,'สกลนคร','Sakon Nakhon',NULL,NULL),(36,'นครพนม','Nakhon Phanom',NULL,NULL),(37,'มุกดาหาร','Mukdahan',NULL,NULL),(38,'เชียงใหม่','Chiang Mai',NULL,NULL),(39,'ลำพูน','Lamphun',NULL,NULL),(40,'ลำปาง','Lampang',NULL,NULL),(41,'อุตรดิตถ์','Uttaradit',NULL,NULL),(42,'แพร่','Phrae',NULL,NULL),(43,'น่าน','Nan',NULL,NULL),(44,'พะเยา','Phayao',NULL,NULL),(45,'เชียงราย','Chiang Rai',NULL,NULL),(46,'แม่ฮ่องสอน','Mae Hong Son',NULL,NULL),(47,'นครสวรรค์','Nakhon Sawan',NULL,NULL),(48,'อุทัยธานี','Uthai Thani',NULL,NULL),(49,'กำแพงเพชร','Kamphaeng Phet',NULL,NULL),(50,'ตาก','Tak',NULL,NULL),(51,'สุโขทัย','Sukhothai',NULL,NULL),(52,'พิษณุโลก','Phitsanulok',NULL,NULL),(53,'พิจิตร','Phichit',NULL,NULL),(54,'เพชรบูรณ์','Phetchabun',NULL,NULL),(55,'ราชบุรี','Ratchaburi',NULL,NULL),(56,'กาญจนบุรี','Kanchanaburi',NULL,NULL),(57,'สุพรรณบุรี','Suphan Buri',NULL,NULL),(58,'นครปฐม','Nakhon Pathom',NULL,NULL),(59,'สมุทรสาคร','Samut Sakhon',NULL,NULL),(60,'สมุทรสงคราม','Samut Songkhram',NULL,NULL),(61,'เพชรบุรี','Phetchaburi',NULL,NULL),(62,'ประจวบคีรีขันธ์','Prachuap Khiri Khan',NULL,NULL),(63,'นครศรีธรรมราช','Nakhon Si Thammarat',NULL,NULL),(64,'กระบี่','Krabi',NULL,NULL),(65,'พังงา','Phangnga',NULL,NULL),(66,'ภูเก็ต','Phuket',NULL,NULL),(67,'สุราษฎร์ธานี','Surat Thani',NULL,NULL),(68,'ระนอง','Ranong',NULL,NULL),(69,'ชุมพร','Chumphon',NULL,NULL),(70,'สงขลา','Songkhla',NULL,NULL),(71,'สตูล','Satun',NULL,NULL),(72,'ตรัง','Trang',NULL,NULL),(73,'พัทลุง','Phatthalung',NULL,NULL),(74,'ปัตตานี','Pattani',NULL,NULL),(75,'ยะลา','Yala',NULL,NULL),(76,'นราธิวาส','Narathiwat',NULL,NULL),(77,'บึงกาฬ','buogkan',NULL,NULL);
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdgs`
--

DROP TABLE IF EXISTS `sdgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdgs` (
  `id_sdgs` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sdgs_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_sdgs`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdgs`
--

LOCK TABLES `sdgs` WRITE;
/*!40000 ALTER TABLE `sdgs` DISABLE KEYS */;
INSERT INTO `sdgs` VALUES (1,NULL,'1. ขจัดความยากจน','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'2. ขจัดความหิวโหย','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,NULL,'3. สุขภาพและความเป็นอยู่ที่ดี','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `sdgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statuses` (
  `id_project_statuses` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_statuses_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_project_statuses`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,NULL,'ต่อเนื่อง','Continuous','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'ใหม่','New','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,NULL,'ตามมติ ครม.','According to the Cabinet Resolution','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(4,NULL,'ตามนโยบายรัฐบาล','According to government policy','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strategic_issues`
--

DROP TABLE IF EXISTS `strategic_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strategic_issues` (
  `id_strategic_issues` bigint unsigned NOT NULL AUTO_INCREMENT,
  `strategic_issues_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_strategic_issues`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strategic_issues`
--

LOCK TABLES `strategic_issues` WRITE;
/*!40000 ALTER TABLE `strategic_issues` DISABLE KEYS */;
INSERT INTO `strategic_issues` VALUES (1,NULL,'ประเด็นยุทธศาสตร์','ประเด็นยุทธศาสตร์','active','2023-01-30 03:26:14','2023-01-30 03:26:14'),(2,NULL,'1. การพัฒนากำลังคนและวิทยาการสำหรับโครงสร้างพื้นฐานทางคุณภาพของประเทศ','S165','active','2023-01-31 02:15:10','2023-01-31 02:15:10'),(3,NULL,'2. การส่งเสริมและพัฒนาขีดความสามารถด้านโครงสร้างพื้นฐานทางคุณภาพของประเทศด้วยวิทยาศาสตร์ เทคโนโลยี และนวัตกรรม สู่ภาคเศรษฐกิจและชุมชน','S265','active','2023-01-31 02:15:57','2023-01-31 02:15:57'),(4,NULL,'3. การส่งเสริมผู้ประกอบการให้สามารถนำ ววน. ไปใช้เพื่อพัฒนากระบวนการผลิตและคุณภาพผลิตภัณฑ์','S365','active','2023-01-31 02:16:41','2023-01-31 02:16:41'),(5,NULL,'4. เป็นองค์กรชั้นนำที่มีประสิทธิภาพตามหลักธรรมาภิบาล','S465','active','2023-01-31 02:17:14','2023-01-31 02:17:14');
/*!40000 ALTER TABLE `strategic_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_chapter_master_plans`
--

DROP TABLE IF EXISTS `sub_chapter_master_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_chapter_master_plans` (
  `id_sub_chapter_master_plans` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sub_chapter_master_plans_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_sub_chapter_master_plans`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_chapter_master_plans`
--

LOCK TABLES `sub_chapter_master_plans` WRITE;
/*!40000 ALTER TABLE `sub_chapter_master_plans` DISABLE KEYS */;
INSERT INTO `sub_chapter_master_plans` VALUES (1,NULL,'23.1 การวิจัยและพัฒนานวัตกรรม ด้านเศรษฐกิจ','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'23.2 การวิจัยและพัฒนานวัตกรรม ด้านสังคม','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,NULL,'23.3 การวิจัยและพัฒนานวัตกรรม ด้านสิ่งแวดล้อม','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(4,NULL,'4.1 อุตสาหกรรมชีวภาพ','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `sub_chapter_master_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targets`
--

DROP TABLE IF EXISTS `targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targets` (
  `id_targets` bigint unsigned NOT NULL AUTO_INCREMENT,
  `targets_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_targets`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targets`
--

LOCK TABLES `targets` WRITE;
/*!40000 ALTER TABLE `targets` DISABLE KEYS */;
INSERT INTO `targets` VALUES (1,NULL,'040101 อุตสาหกรรมชีวภาพมีการขยายตัวเพิ่มขึ้น','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(2,NULL,'040201 อุตสาหกรรมและบริการทางการแพทย์มีการขยายตัวเพิ่มขึ้น','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(3,NULL,'040301 อุตสาหกรรมและบริการ เทคโนโลยีดิจิทัล ข้อมูล และปัญญาประดิษฐ์ มีการขยายตัวเพิ่มขึ้น','active','2023-01-30 01:50:21','2023-01-30 01:50:21'),(4,NULL,'040401 ประเทศไทยเป็นศูนย์กลางการซ่อมบ ารุงอากาศยานในภูมิภาคโดยเฉพาะอากาศยานรุ่นใหม','active','2023-01-30 01:50:21','2023-01-30 01:50:21');
/*!40000 ALTER TABLE `targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_from`
--

DROP TABLE IF EXISTS `template_from`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_from` (
  `id_template_from` int NOT NULL,
  `template_from_name` varchar(45) DEFAULT NULL,
  `status` enum('active','archive') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_template_from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_from`
--

LOCK TABLES `template_from` WRITE;
/*!40000 ALTER TABLE `template_from` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_from` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_from_detail`
--

DROP TABLE IF EXISTS `template_from_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_from_detail` (
  `id_template_from_detail` int NOT NULL AUTO_INCREMENT,
  `seq` varchar(5) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `status` enum('active','archive') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_template_from` int NOT NULL,
  PRIMARY KEY (`id_template_from_detail`),
  KEY `fk_template_from_detail_template_from1_idx` (`id_template_from`),
  CONSTRAINT `fk_template_from_detail_template_from1` FOREIGN KEY (`id_template_from`) REFERENCES `template_from` (`id_template_from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_from_detail`
--

LOCK TABLES `template_from_detail` WRITE;
/*!40000 ALTER TABLE `template_from_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_from_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_project`
--

DROP TABLE IF EXISTS `type_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_project` (
  `id_type_project` int NOT NULL,
  `type_project_no` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `en_name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_type_project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_project`
--

LOCK TABLES `type_project` WRITE;
/*!40000 ALTER TABLE `type_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sushant Karki','karkisusant@gmail.com',NULL,'sushant','2023-01-30 01:51:06','2023-01-30 01:51:06'),(2,'jack','hack@yopmail.com',NULL,'jack','2023-01-30 02:10:17','2023-01-30 02:10:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_plans`
--

DROP TABLE IF EXISTS `work_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_plans` (
  `id_work_plans` bigint unsigned NOT NULL AUTO_INCREMENT,
  `work_plans_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_work_plans`),
  KEY `fk_work_plans_projects1_idx` (`id_projects`),
  CONSTRAINT `fk_work_plans_projects1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_plans`
--

LOCK TABLES `work_plans` WRITE;
/*!40000 ALTER TABLE `work_plans` DISABLE KEYS */;
INSERT INTO `work_plans` VALUES (1,NULL,'แผนงานพื้นฐานด้านการสร้างความสามารถในการแข่งขัน','Basic plan for competitiveness','active','2023-01-30 01:50:21','2023-01-30 01:50:21',0),(2,NULL,'แผนงานยุทธศาสตร์พัฒนาศักยภาพด้านวิทยาศาสตร์ เทคโนโลยี และนวัตกรรม [แผนงานด้าน]','Strategic plan for developing the potential of science, technology and innovation [Plan]','active','2023-01-30 01:50:21','2023-01-30 01:50:21',0),(3,NULL,'แผนงานยุทธศาสตร์การส่งเสริมวิสาหกิจขนาดกลางและขนาดย่อมที่เข้มแข็ง แข่งขันได้ [แผนงานด้าน]','Strategic plan for promoting small and medium -sized enterprises that can compete in [work plan]','active','2023-01-30 01:50:21','2023-01-30 01:50:21',0),(4,NULL,'แผนงานบูรณาการพัฒนาอุตสาหกรรมและบริการแห่งอนาคต [แผนงานด้าน]','Plan to integrate industrial development and service of the future [work plan]','active','2023-01-30 01:50:21','2023-01-30 01:50:21',0),(5,NULL,'แผนงานบูรณาการเขตพัฒนาพิเศษภาคตะวันออก [แผนงานด้าน]','Plan for the Eastern Special Development Zone [Plan]','active','2023-01-30 01:50:21','2023-01-30 01:50:21',0),(6,NULL,'แผนงานบูรณาการพัฒนาและส่งเสริมเศรษฐกิจฐานราก [แผนงานด้าน]','Plan for integration, development and promotion of the foundation economy [work plan]','active','2023-01-30 01:50:21','2023-01-30 01:50:21',0),(7,NULL,'แผนงานบูรณาการรัฐบาลดิจิทัล [แผนงานด้าน]','Digital government integration plan [Plan]','active','2023-01-30 01:50:21','2023-01-30 01:50:21',0);
/*!40000 ALTER TABLE `work_plans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-17 11:50:58
