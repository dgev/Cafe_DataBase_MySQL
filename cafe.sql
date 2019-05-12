-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: cafe
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `category_id` varchar(10) NOT NULL,
  `category_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('c1','BEVERAGES'),('c2','Dessert');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_phone_number`
--

DROP TABLE IF EXISTS `cust_phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cust_phone_number` (
  `SSN` varchar(10) DEFAULT NULL,
  `phone_number` char(9) DEFAULT NULL,
  KEY `SSN` (`SSN`),
  CONSTRAINT `cust_phone_number_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `customer` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_phone_number`
--

LOCK TABLES `cust_phone_number` WRITE;
/*!40000 ALTER TABLE `cust_phone_number` DISABLE KEYS */;
INSERT INTO `cust_phone_number` VALUES ('5061121199','092366693'),('3041123199','092982886'),('3050319899','094317600'),('4100406299','092302098'),('5022495799','093358389'),('0101071999','092755416'),('7113080899','094952295'),('1042119599','094501489'),('3021692899','092592972'),('7080729399','094441935'),('4081736199','093184577'),('9103037199','092004245'),('8092644299','094845442'),('7051406799','093452792'),('6112178699','092778631'),('3121347899','093249355'),('1040522399','094133680'),('7120593799','093614575'),('9062380399','093688316'),('6011045599','094594485'),('1012201399','093566528'),('1012201399','092716714'),('6041326299','092825294'),('6041326299','092392365'),('1091039399','093873761'),('1091039399','092781637'),('0121236999','094974486'),('0121236999','093440431'),('9030817699','094946830'),('9030817699','094360938'),('2062635399','093875521'),('2062635399','093498843'),('6042294599','092997379'),('6042294599','093114997'),('6080660199','092417183'),('6080660199','092689297'),('8022200599','094849960'),('8022200599','093890222'),('8011241899','092493658'),('8011241899','092744439');
/*!40000 ALTER TABLE `cust_phone_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `SSN` varchar(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `customer_status` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `city_village` varchar(10) DEFAULT NULL,
  `street` varchar(10) DEFAULT NULL,
  `building` int(3) DEFAULT NULL,
  `apartment` int(3) DEFAULT NULL,
  PRIMARY KEY (`SSN`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('0101071999','Teegan','Holman','New','Duis@Suspendissenonleo.com','1995-05-02','Gyumri','Komitas',3,7),('0121236999','Kyla','Logan','New','nibh.Donec.est@sitamet.ca','1987-10-01','Artashat','Baghramyan',5,26),('1012201399','Yoshio','Paul','New','mi.eleifend.egestas@velsapien.org','1996-02-07','Yerevan','Saryan',9,34),('1040522399','Gage','Finch','Potential','malesuada@nonummy.ca','1965-07-01','Artashat','Saryan',2,49),('1042119599','Zia','Hamilton','Potential','pellentesque@pellentesquetellus.org','1999-09-10','Artashat','Komitas',7,27),('1091039399','Vance','Case','New','ligula.consectetuer@feugiatplaceratvelit.co.uk','1976-03-09','Vanadzor','Abovyan',1,42),('2062635399','Quyn','Kidd','Potential','bibendum@egestas.co.uk','1955-06-07','Gyumri','Baghramyan',6,35),('3021692899','Byron','Strong','New','lectus@egestas.co.uk','1976-08-01','Artashat','Halabyan',4,29),('3041123199','Simone','Strong','New','Sed@ut.ca','1980-02-18','Vanadzor','Komitas',5,41),('3050319899','Breanna','Blanchard','Potential','enim.Mauris@eu.org','1990-08-30','Yerevan','Komitas',6,62),('3121347899','Quinlan','Powell','New','malesuada.fames@Cumsociis.net','1996-09-11','Yerevan','Abovyan',6,38),('4081736199','Noble','Floyd','Potential','odio@loremtristique.net','1983-08-10','Yerevan','Halabyan',10,7),('4100406299','Callum','Thornton','New','luctus.lobortis.Class@auctorquistristique.com','1994-03-12','Yerevan','Kochar',6,11),('5022495799','Aiko','Gilliam','New','ut@euneque.org','1997-06-07','Vanadzor','Isakov',10,62),('5061121199','Quincy','Bryant','Potential','et@montesnasceturridiculus.net','1962-02-14','Gyumri','Halabyan',4,21),('6011045599','Dane','Fowler','New','felis.orci.adipiscing@sed.org','1964-11-12','Yerevan','Shahumyan',9,66),('6041326299','Chantale','Flores','New','in.felis@ipsum.org','1998-07-08','Artashat','Shahumyan',10,67),('6042294599','Shaeleigh','Warren','Potential','mauris.sapien@tincidunt.com','1959-09-08','Yerevan','Isakov',10,26),('6080660199','Shoshana','Phillips','New','est.arcu@cursusvestibulum.edu','1973-09-02','Yerevan','Kochar',1,51),('6112178699','Odette','Pickett','Potential','Quisque@Aliquamrutrum.co.uk','1971-03-04','Vanadzor','Kochar',8,69),('7051406799','Reed','Oconnor','Potential','posuere@adipiscingenimmi.com','1992-05-04','Yerevan','Abovyan',4,60),('7080729399','Maile','Aguilar','Potential','Susptincidunt@sagittissemper.edu','1952-09-25','Artashat','Saryan',5,59),('7113080899','Frances','Shaw','New','mus@torquent.org','1994-07-24','Gyumri','Komitas',6,46),('7120593799','Byron','Chan','New','nec@arcuVestibulum.ca','1976-12-05','Yerevan','Komitas',6,2),('8011241899','Quon','Cobb','Potential','dolor.Quisque@Morbiquisurna.org','1957-06-06','Yerevan','Abovyan',4,12),('8022200599','Paula','Ramsey','Potential','Aliquam.erat@inlobortistellus.com','1958-01-06','Yerevan','Mashtots',6,59),('8092644299','Cairo','Horn','Potential','augue.Sed@liberoduinec.edu','1985-11-07','Vanadzor','Isakov',10,16),('9030817699','Faith','Kirkland','Potential','eu.euismod.ac@uteros.edu','1985-06-09','Vanadzor','Kochar',5,9),('9062380399','Belle','Horn','New','lacus@Utnec.org','1975-08-05','Gyumri','Shahumyan',1,62),('9103037199','Colt','Carlson','New','nec.imperdiet.nec@laoreetposuereenim.edu','1968-09-16','Gyumri','Mashtots',4,19);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_phone_number`
--

DROP TABLE IF EXISTS `emp_phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `emp_phone_number` (
  `SSN` varchar(10) DEFAULT NULL,
  `phone_number` char(9) DEFAULT NULL,
  KEY `SSN` (`SSN`),
  CONSTRAINT `emp_phone_number_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `employee` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_phone_number`
--

LOCK TABLES `emp_phone_number` WRITE;
/*!40000 ALTER TABLE `emp_phone_number` DISABLE KEYS */;
INSERT INTO `emp_phone_number` VALUES ('1608021323','055602539'),('1608021323','099341769'),('1608021323','055412444'),('1632012825','091050385'),('1632012825','098337025'),('1657121957','098108126'),('1649011371','055925626'),('1698021078','098077079'),('1666071952','099691939'),('1666071952','055960713'),('1651090383','098435329'),('1651090383','091964190'),('1627080457','091249029'),('1627080457','099260686'),('1627080457','099804992'),('1647120123','098689996'),('1669111876','099437256'),('1663111716','055798704'),('1679092941','091127454'),('1622021782','099849306'),('1681090689','099570036'),('1648012107','099175671'),('1630041596','055344644'),('1648070809','098479966'),('1648070809','098555877'),('1686061843','098954115'),('1631121251','098503684'),('1610092209','091582141'),('1610092209','098917329'),('1610092209','099394455');
/*!40000 ALTER TABLE `emp_phone_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `SSN` varchar(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `job_position` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `salary` int(6) DEFAULT NULL,
  PRIMARY KEY (`SSN`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('1608021323','Dacey','Hutchinson','Manager','ipsum.nunc@mollis.net',76000),('1610092209','Dora','Galloway','Customer Service','sed@nuncacmattis.org',39000),('1622021782','Rachel','Evans','Waiter','ac.urna.Ut@egestasrhoncusProin.edu',39000),('1627080457','Maia','Cortez','Finance Manager','faucibus@Nullasemper.net',94000),('1630041596','Drew','Chambers','Customer Service','orci.luctus.et@Nullaeuneque.co.uk',33000),('1631121251','Tad','Nolan','Deliverer','ultrices@rhoncusid.co.uk',56000),('1632012825','Shaine','Baldwin','Deliverer','luctus.et@pharetranibhAliquam.edu',92000),('1647120123','Damian','Stanley','Waiter','Phasellus@nuncsed.com',26000),('1648012107','Brady','Flynn','Deliverer','arcu@amet.net',40000),('1648070809','Raymond','Padilla','Deliverer','elit@ipsumdolor.net',67000),('1649011371','Dorothy','Nieves','Deliverer','varius.et@vitaedolorDonec.co.uk',53000),('1651090383','Yvette','Dalton','Cashier','ut@porttitor.edu',89000),('1657121957','Oprah','Grant','Deliverer','eget.massa@pretium.net',92000),('1663111716','Rashad','Gordon','Waiter','aptent@arcu.co.uk',48000),('1666071952','Amos','Fitzpatrick','Cashier','sem.ut@duilectus.net',55000),('1669111876','Clark','Guerra','Deliverer','quis.arcu@eleifend.org',23000),('1679092941','Keiko','Mcdonald','Waiter','Aliquam.cursus@tinciequevitae.com',80000),('1681090689','Rashad','Taylor','Customer Service','placerat@interdumligulaeu.net',41000),('1686061843','Mary','Figueroa','Customer Service','ac.turpis@Maecenasornare.net',28000),('1698021078','Hall','White','Cashier','mollis.nec@vitaevelit.com',49000);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menu` (
  `product_id` varchar(10) NOT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `cost` int(6) NOT NULL,
  `sub_category_id` varchar(15) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `sub_category_id` (`sub_category_id`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`sub_category_id`) REFERENCES `subcategory` (`sub_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES ('a1','Croissant',500,'s8'),('a10','Triple chocolate cake',1500,'s8'),('a11','Apple juice',500,'s1'),('a12','Lime juice',500,'s1'),('a13','Cranberry juice',600,'s1'),('a14','Lemon Juice',500,'s1'),('a15','Multifruit juice',700,'s1'),('a16','Peanut and banana',1200,'s2'),('a17','Milkshake',1100,'s2'),('a18','gumi-berry',1500,'s2'),('a19','Strawberry cheesecake',1200,'s2'),('a2','Brioche',1000,'s8'),('a20','Ginger Tea',600,'s3'),('a21','Chamomile Tea',600,'s3'),('a22','Peppermint Tea',600,'s3'),('a23','Mango',1000,'s4'),('a24','Pear',1000,'s4'),('a25','Lime',1000,'s4'),('a26','Lemon',1000,'s4'),('a27','Strawberry lemonade',1100,'s5'),('a28','Rasberry lemonade',1200,'s5'),('a29','Cranberry lemonade',1500,'s5'),('a3','Chocolate cake',1200,'s8'),('a30','Grape lemonade',1000,'s5'),('a31','Belgium hot chocolate',2000,'s6'),('a32','Capuccino',1500,'s7'),('a33','Americano',1200,'s7'),('a34','Espresso',1200,'s7'),('a35','Late',1300,'s7'),('a36','Arabica',600,'s7'),('a37','Filter coffee',1000,'s7'),('a4','Pain au chocolate',800,'s8'),('a5','Lava cake',900,'s8'),('a6','Paris brest',900,'s8'),('a7','Chocolate tart',1500,'s9'),('a8','Strawberry tart',2000,'s9'),('a9','Chocolate brownie',1200,'s8');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderdetails` (
  `orderdetails_id` varchar(10) NOT NULL,
  `order_id` varchar(10) NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `amount` int(3) NOT NULL,
  PRIMARY KEY (`order_id`,`orderdetails_id`),
  KEY `product_id` (`product_id`),
  KEY `amount` (`amount`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `menu` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES ('od1','o1','a2',1),('od2','o1','a3',1),('od3','o1','a4',1),('od1','o10','a6',3),('od1','o11','a2',4),('od2','o11','a29',2),('od1','o12','a23',4),('od1','o13','a31',4),('od1','o14','a4',10),('od2','o14','a16',10),('od1','o15','a14',1),('od1','o16','a27',1),('od1','o17','a24',5),('od1','o18','a21',1),('od2','o18','a2',1),('od1','o19','a36',2),('od1','o2','a8',2),('od1','o20','a4',1),('od1','o21','a8',1),('od2','o21','a9',2),('od3','o21','a10',1),('od4','o21','a4',1),('od5','o21','a27',1),('od1','o22','a2',5),('od1','o23','a2',1),('od2','o23','a37',1),('od1','o24','a32',4),('od2','o24','a2',4),('od1','o25','a25',4),('od2','o25','a17',2),('od1','o26','a34',3),('od1','o27','a1',1),('od2','o27','a7',1),('od3','o27','a10',1),('od1','o28','a35',1),('od1','o29','a22',1),('od1','o3','a5',1),('od1','o30','a14',3),('od1','o31','a13',4),('od2','o31','a9',4),('od1','o32','a10',5),('od1','o33','a7',2),('od1','o34','a8',1),('od2','o34','a7',1),('od3','o34','a30',2),('od1','o35','a33',7),('od1','o36','a27',5),('od1','o37','a16',1),('od1','o38','a6',3),('od2','o38','a24',3),('od1','o4','a23',2),('od2','o4','a11',2),('od3','o4','a1',2),('od1','o5','a9',3),('od1','o6','a35',1),('od1','o7','a2',1),('od2','o7','a3',1),('od3','o7','a4',1),('od1','o8','a35',1),('od2','o8','a10',1),('od1','o9','a17',2);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `order_id` varchar(10) NOT NULL,
  `customer_SSN` varchar(10) NOT NULL,
  `employee_SSN` varchar(10) NOT NULL,
  `cost` int(6) NOT NULL,
  `order_date` date NOT NULL,
  `required_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_SSN` (`customer_SSN`),
  KEY `employee_SSN` (`employee_SSN`),
  KEY `cost` (`cost`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_SSN`) REFERENCES `customer` (`ssn`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`employee_SSN`) REFERENCES `employee` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('o1','5061121199','1632012825',6000,'2018-10-19','2018-11-10','2018-11-29'),('o10','1042119599','1657121957',2700,'2018-10-26','2018-11-02','2018-12-03'),('o11','1042119599','1648012107',5000,'2018-10-04','2018-11-11','2018-11-17'),('o12','3021692899','1648070809',4000,'2018-10-02','2018-11-13','2018-12-07'),('o13','7080729399','1632012825',8000,'2018-10-26','2018-11-13','2018-12-06'),('o14','4081736199','1649011371',20000,'2018-10-10','2018-11-12','2018-11-29'),('o15','9103037199','1669111876',500,'2018-10-11','2018-11-04','2018-11-13'),('o16','9103037199','1632012825',1100,'2018-10-04','2018-11-03','2018-12-09'),('o17','8092644299','1648070809',5000,'2018-10-23','2018-11-08','2018-11-20'),('o18','7051406799','1649011371',1100,'2018-10-03','2018-11-14','2018-12-05'),('o19','7051406799','1648070809',1200,'2018-10-06','2018-11-09','2018-11-30'),('o2','5061121199','1657121957',4000,'2018-10-20','2018-11-09','2018-11-26'),('o20','6112178699','1657121957',800,'2018-10-08','2018-11-06','2018-11-14'),('o21','6112178699','1648012107',7800,'2018-10-23','2018-11-07','2018-11-24'),('o22','3121347899','1632012825',2500,'2018-10-31','2018-11-08','2018-11-25'),('o23','1040522399','1648070809',2000,'2018-10-22','2018-11-08','2018-11-10'),('o24','7120593799','1648070809',10000,'2018-10-20','2018-11-07','2018-11-22'),('o25','9062380399','1649011371',6200,'2018-10-26','2018-11-08','2018-12-06'),('o26','6011045599','1631121251',3600,'2018-10-27','2018-11-03','2018-11-23'),('o27','1012201399','1632012825',3500,'2018-10-09','2018-11-13','2018-11-17'),('o28','6041326299','1649011371',1300,'2018-10-02','2018-11-13','2018-11-25'),('o29','1091039399','1649011371',600,'2018-10-22','2018-11-08','2018-11-21'),('o3','3041123199','1649011371',900,'2018-10-12','2018-11-07','2018-11-26'),('o30','0121236999','1648012107',1500,'2018-10-24','2018-11-04','2018-11-21'),('o31','0121236999','1657121957',7200,'2018-10-28','2018-11-11','2018-11-27'),('o32','9030817699','1649011371',7500,'2018-10-30','2018-11-02','2018-12-07'),('o33','2062635399','1657121957',3000,'2018-10-07','2018-11-06','2018-11-12'),('o34','6042294599','1632012825',5500,'2018-10-08','2018-11-11','2018-12-09'),('o35','6080660199','1669111876',8400,'2018-10-20','2018-11-13','2018-11-23'),('o36','6080660199','1657121957',5500,'2018-10-06','2018-11-12','2018-11-09'),('o37','8022200599','1632012825',1200,'2018-10-24','2018-11-08','2018-11-27'),('o38','8011241899','1632012825',4800,'2018-10-14','2018-11-15','2018-11-30'),('o4','3050319899','1631121251',2500,'2018-10-31','2018-11-13','2018-11-20'),('o5','4100406299','1657121957',3600,'2018-10-13','2018-11-10','2018-11-14'),('o6','5022495799','1632012825',1300,'2018-10-24','2018-11-11','2018-11-12'),('o7','5022495799','1657121957',6000,'2018-10-30','2018-11-06','2018-12-07'),('o8','0101071999','1649011371',2300,'2018-10-25','2018-11-08','2018-12-02'),('o9','7113080899','1648070809',2200,'2018-10-07','2018-11-10','2018-11-22');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subcategory` (
  `category_id` varchar(10) DEFAULT NULL,
  `sub_category` varchar(15) DEFAULT NULL,
  `sub_category_id` varchar(15) NOT NULL,
  PRIMARY KEY (`sub_category_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES ('c1','Juice','s1'),('c1','Shakes','s2'),('c1','HotTea','s3'),('c1','ColdTea','s4'),('c1','Lemonade','s5'),('c1','Chocolate','s6'),('c1','Coffee','s7'),('c2','Cake','s8'),('c2','Tart','s9');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-13 12:03:00
