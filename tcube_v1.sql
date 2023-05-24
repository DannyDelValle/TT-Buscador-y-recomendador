CREATE DATABASE  IF NOT EXISTS `tcube` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tcube`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tcube
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

--z
-- Table structure for table `academia`
--

DROP TABLE IF EXISTS `academia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academia` (
  `id_academ` int NOT NULL,
  `name_acade` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_academ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academia`
--

LOCK TABLES `academia` WRITE;
/*!40000 ALTER TABLE `academia` DISABLE KEYS */;
INSERT INTO `academia` VALUES (1,'CB'),(2,'CC'),(3,'CD'),(4,'CS'),(5,'FSE'),(6,'IA'),(7,'ISW'),(8,'PETD'),(9,'POSGR'),(10,'SDIG'),(11,'SDIST'),(12,'TT');
/*!40000 ALTER TABLE `academia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academia_asignatura`
--

DROP TABLE IF EXISTS `academia_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academia_asignatura` (
  `idacademia_asignatura` int NOT NULL AUTO_INCREMENT,
  `id_academia` int NOT NULL,
  `id_asigna` int NOT NULL,
  PRIMARY KEY (`idacademia_asignatura`),
  KEY `fk_academia_acasig_idx` (`id_academia`),
  KEY `fk_asignatura_acasig_idx` (`id_asigna`),
  CONSTRAINT `fk_academia_acasig` FOREIGN KEY (`id_academia`) REFERENCES `academia` (`id_academ`) ON UPDATE CASCADE,
  CONSTRAINT `fk_asignatura_acasig` FOREIGN KEY (`id_asigna`) REFERENCES `asignatura` (`id_asigna`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academia_asignatura`
--

LOCK TABLES `academia_asignatura` WRITE;
/*!40000 ALTER TABLE `academia_asignatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `academia_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `mail_alu` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `name_alu` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `pass_alu` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `active_alu` int NOT NULL DEFAULT '2',
  `vercod_alu` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`mail_alu`),
  UNIQUE KEY `mail_alu_UNIQUE` (`mail_alu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area_interes`
--

DROP TABLE IF EXISTS `area_interes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area_interes` (
  `id_areasint` int NOT NULL,
  `name_areasint` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_areasint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_interes`
--

LOCK TABLES `area_interes` WRITE;
/*!40000 ALTER TABLE `area_interes` DISABLE KEYS */;
/*!40000 ALTER TABLE `area_interes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `id_art` int NOT NULL AUTO_INCREMENT,
  `name_art` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `autor` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `link` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_art`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `id_asigna` int NOT NULL,
  `name_asigna` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_asigna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'Administración Financiera'),(2,'Administración de Proyectos'),(3,'Administración de Servicios en Red'),(4,'Advanced Computing Systems Programming'),(5,'Algoritmos Bioinspirados'),(6,'Algoritmos y Estructuras de Datos'),(7,'Analítica Avanzada'),(8,'Analítica y Visualización de Datos'),(9,'Análisis Fundamental de Circuitos'),(10,'Análisis Vectorial'),(11,'Análisis de Algoritmos'),(12,'Análisis de Series de Tiempo'),(13,'Análisis y Diseño Orientado a Objetos'),(14,'Análisis y Diseño de Algoritmos'),(15,'Análisis y Diseño de Sistemas'),(17,'Aplicaciones para Comunicaciones en Red'),(18,'App .Dev. for Mobile Devices'),(19,'App. Dev. for Mobile Devices'),(20,'Aprendizaje de Máquina'),(22,'Arquitectura de Computadoras'),(23,'Arquitectura de dispositivos Móviles'),(24,'Artificial Intelligence'),(25,'Bases de Datos'),(26,'Bases de Datos Avanzadas'),(27,'Bioinformatics'),(28,'Calidad en el Servicio en Sistemas Móviles'),(29,'Circuitos Eléctricos'),(30,'Cloud Computing'),(31,'Comp Educt y Multim Móviles'),(32,'Compiladores'),(33,'Computational Geometry'),(34,'Computer Graphics'),(35,'Computer Security'),(36,'Computing Selected Topics'),(37,'Comunicaciones a Distancia'),(38,'Comunicación Oral y Escrita'),(39,'Cryptography'),(40,'Cálculo'),(41,'Cálculo Aplicado'),(42,'Cálculo Multivariable'),(43,'Cómputo Paralelo'),(44,'Cómputo de Alto Desempeño'),(45,'Cómputo en la nube'),(46,'Data Mining'),(47,'Database Selected Topics'),(48,'Desarrollo de Aplicaciones Web'),(50,'Desarrollo de Sist Dist'),(51,'Desarrollo de Sistemas Distribudios'),(52,'Desarrollo de Sistemas Distribuidos'),(53,'Diseño de Sistemas Digitales'),(54,'Distributed Database'),(55,'Economic Engineering'),(56,'Ecuaciones Diferenciales'),(57,'Electrónica Analógica'),(58,'Embedded Systems'),(59,'Estadística'),(60,'Estructuras de Datos'),(61,'Evolutionary Computing'),(62,'Finanzas Empresariales'),(64,'Fundamentos Económicos'),(65,'Fundamentos de Comunicaciones Móviles'),(66,'Fundamentos de Diseño Digital'),(67,'Fundamentos de Inteligencia Artificial'),(68,'Fundamentos de Programación'),(69,'Genetic Algorithms'),(70,'Gestión Empresarial'),(71,'High Technology Enterprise Management'),(72,'IT Governance'),(73,'Image Analysis'),(74,'Ingeniería Software para Cómputo Móvil'),(75,'Ingeniería de Software'),(77,'Ingeniería Ética y Sociedad'),(78,'Instrumentación'),(79,'Instrumentación y Control'),(80,'Inteligencia Artificial'),(81,'Introducción a la Ciencia de Datos'),(82,'Introducción a los Microcontroladores'),(83,'Introduction to Cryptography'),(84,'Liderazgo Personal'),(85,'Liderazgo y Desarrollo Profesional'),(86,'Machine Learning'),(88,'Matemáticas Avanzadas para la Ingenería'),(89,'Matemáticas Avanzadas para la Ingeniería'),(90,'Matemáticas Discretas'),(91,'Mecánica y Electromagnetismo'),(93,'Minería de Datos'),(94,'Mobile Commerce'),(95,'Mobile E-Bussiness'),(96,'Modelado Predictivo'),(101,'Métodos Numéricos'),(102,'Neural Networks'),(103,'Paradigmas de Programación'),(104,'Pattern Recognition'),(105,'Probabilidad'),(106,'Probabilidad y Estadística'),(107,'Procesamiento Digital de Imágenes'),(108,'Procesamiento Digital de Señales'),(109,'Procesamiento de Lenguaje Natural'),(110,'Procesamiento de Señales'),(111,'Procesos Estocásticos'),(112,'Programación Orientada a Objetos'),(113,'Programación de Dispositivos Móviles'),(115,'Programación para la Ciencia de Datos'),(116,'Realidad Virtual'),(117,'Redes Inalámbricas'),(118,'Redes Neuronales y Aprendizaje Profundo'),(119,'Redes de Computadoras'),(120,'S: E. for Mobile Devices'),(121,'Security in Mobile Systems'),(122,'Seminario I'),(123,'Seminario II'),(124,'Seminario III'),(125,'Seminario IV'),(126,'Sistemas Multiagentes'),(127,'Sistemas Operativos'),(128,'Sistemas Operativos para Cómputo Móvil'),(129,'Sistemas en Chip'),(130,'Sistemas en Tiempo Real'),(131,'Software Engineering for Mobile Devices'),(133,'Tecnologías de Lenguaje Natural'),(135,'Tecnologías para la Web'),(136,'Teoría Computacional'),(137,'Teoría de Comunicaciones y Señales'),(138,'Teoría de la Computación'),(139,'Trabajo Terminal I'),(140,'Trabajo Terminal II'),(142,'Tópicos en Inteligencia Artificial Actual'),(143,'Visión Artificial'),(144,'Visión Computacional'),(145,'Web Application Development'),(146,'Web Security'),(147,'e-Commerce'),(148,'Álgebra Lineal'),(149,'Ética y Legalidad');
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catt`
--

DROP TABLE IF EXISTS `catt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catt` (
  `mail_catt` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `pass_catt` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `active_catt` int NOT NULL DEFAULT '2',
  `vercod_catt` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL DEFAULT 'catt',
  PRIMARY KEY (`mail_catt`),
  UNIQUE KEY `mail_catt_UNIQUE` (`mail_catt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catt`
--

LOCK TABLES `catt` WRITE;
/*!40000 ALTER TABLE `catt` DISABLE KEYS */;
/*!40000 ALTER TABLE `catt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorito_director`
--

DROP TABLE IF EXISTS `favorito_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorito_director` (
  `id_favdirec` int NOT NULL,
  `mail_alu` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `mail_profin` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_favdirec`),
  KEY `fk_alumno_favoritodirector_idx` (`mail_alu`),
  KEY `fk_profesorin_favoritodirector_idx` (`mail_profin`),
  CONSTRAINT `fk_alumno_favoritodirector` FOREIGN KEY (`mail_alu`) REFERENCES `alumno` (`mail_alu`) ON UPDATE CASCADE,
  CONSTRAINT `fk_profesorin_favoritodirector` FOREIGN KEY (`mail_profin`) REFERENCES `profesor_informacion` (`mail_profin`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorito_director`
--

LOCK TABLES `favorito_director` WRITE;
/*!40000 ALTER TABLE `favorito_director` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorito_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorito_ptt`
--

DROP TABLE IF EXISTS `favorito_ptt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorito_ptt` (
  `id_favptt` int NOT NULL,
  `mail_alu` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `num_ptt` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_favptt`),
  KEY `fk_alumno_favoritoptt_idx` (`mail_alu`),
  KEY `fk_ptt_favoritoptt_idx` (`num_ptt`),
  CONSTRAINT `fk_alumno_favoritoptt` FOREIGN KEY (`mail_alu`) REFERENCES `alumno` (`mail_alu`) ON UPDATE CASCADE,
  CONSTRAINT `fk_ptt_favoritoptt` FOREIGN KEY (`num_ptt`) REFERENCES `ptt` (`num_ptt`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorito_ptt`
--

LOCK TABLES `favorito_ptt` WRITE;
/*!40000 ALTER TABLE `favorito_ptt` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorito_ptt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor_academia`
--

DROP TABLE IF EXISTS `profesor_academia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor_academia` (
  `id_profacadem` int NOT NULL,
  `mail_profin` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `id_academ` int NOT NULL,
  PRIMARY KEY (`id_profacadem`),
  KEY `fk_academia_profesoracademia_idx` (`id_academ`),
  KEY `fk_profesorin_profesoracademia_idx` (`mail_profin`),
  CONSTRAINT `fk_academia_profesoracademia` FOREIGN KEY (`id_academ`) REFERENCES `academia` (`id_academ`) ON UPDATE CASCADE,
  CONSTRAINT `fk_profesorin_profesoracademia` FOREIGN KEY (`mail_profin`) REFERENCES `profesor_informacion` (`mail_profin`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor_academia`
--

LOCK TABLES `profesor_academia` WRITE;
/*!40000 ALTER TABLE `profesor_academia` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor_academia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor_areainteres`
--

DROP TABLE IF EXISTS `profesor_areainteres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor_areainteres` (
  `id_profarea` int NOT NULL,
  `mail_profin` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `id_areasint` int NOT NULL,
  PRIMARY KEY (`id_profarea`),
  KEY `fk_areainteres_profesorareainteres_idx` (`id_areasint`),
  KEY `fk_profesorin_profesorarea_idx` (`mail_profin`),
  CONSTRAINT `fk_areainteres_profesorareainteres` FOREIGN KEY (`id_areasint`) REFERENCES `area_interes` (`id_areasint`) ON UPDATE CASCADE,
  CONSTRAINT `fk_profesorin_profesorarea` FOREIGN KEY (`mail_profin`) REFERENCES `profesor_informacion` (`mail_profin`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor_areainteres`
--

LOCK TABLES `profesor_areainteres` WRITE;
/*!40000 ALTER TABLE `profesor_areainteres` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor_areainteres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor_articulo`
--

DROP TABLE IF EXISTS `profesor_articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor_articulo` (
  `id_profart` int NOT NULL AUTO_INCREMENT,
  `mail_profin` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `id_art` int NOT NULL,
  PRIMARY KEY (`id_profart`),
  KEY `fk_profesorinf_profart_idx` (`mail_profin`),
  KEY `fk_articulo_profart_idx` (`id_art`),
  CONSTRAINT `fk_articulo_profart` FOREIGN KEY (`id_art`) REFERENCES `articulo` (`id_art`) ON UPDATE CASCADE,
  CONSTRAINT `fk_profesorinf_profart` FOREIGN KEY (`mail_profin`) REFERENCES `profesor_informacion` (`mail_profin`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor_articulo`
--

LOCK TABLES `profesor_articulo` WRITE;
/*!40000 ALTER TABLE `profesor_articulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor_articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor_asignatura`
--

DROP TABLE IF EXISTS `profesor_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor_asignatura` (
  `id_profasig` int NOT NULL,
  `mail_profin` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `id_asigna` int NOT NULL,
  PRIMARY KEY (`id_profasig`),
  KEY `fk_asignatura_profesorasignatura_idx` (`id_asigna`),
  KEY `fk_profesorin_profesorasigna_idx` (`mail_profin`),
  CONSTRAINT `fk_asignatura_profesorasignatura` FOREIGN KEY (`id_asigna`) REFERENCES `asignatura` (`id_asigna`) ON UPDATE CASCADE,
  CONSTRAINT `fk_profesorin_profesorasigna` FOREIGN KEY (`mail_profin`) REFERENCES `profesor_informacion` (`mail_profin`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor_asignatura`
--

LOCK TABLES `profesor_asignatura` WRITE;
/*!40000 ALTER TABLE `profesor_asignatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor_informacion`
--

DROP TABLE IF EXISTS `profesor_informacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor_informacion` (
  `mail_profin` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `name_profin` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`mail_profin`),
  UNIQUE KEY `mail_profin_UNIQUE` (`mail_profin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor_informacion`
--

LOCK TABLES `profesor_informacion` WRITE;
/*!40000 ALTER TABLE `profesor_informacion` DISABLE KEYS */;
INSERT INTO `profesor_informacion` VALUES ('abjuarezm@ipn.mx','Juarez Mendez Ana Belem'),('abotelloca@ipn.mx','Botello Castillo Alejandro'),('acruzl@ipn.mx','Cruz Lázaro Apolinar Francisco'),('aduranl@ipn.mx','Durán Ledezma Ángel Adalberto'),('afannys@ipn.mx','Sosa Adán Fanny'),('afernandezv@ipn.mx','Fernández Vázquez Alfonso'),('agjuarez@ipn.mx','Juárez Carrión Alicia Guillermina'),('agonzalezci@ipn.mx','González Cisneros Alejandro'),('ajalcantaram@ipn.mx','Alcántara Méndez Alberto Jesús'),('alfsanchez@ipn.mx','Sánchez Aguilar Alfonso'),('aloyolae@ipn.mx','Loyola Espinosa Araceli'),('amontesm@ipn.mx','Montes Meza Adbel Anahí'),('amontiels@ipn.mx','Montiel Sánchez Ángel Salvador'),('amorenoc@ipn.mx','Moreno Cervantes Axel Ernesto'),('anmorales@ipn.mx','Morales González Ángel'),('aortigoza@ipn.mx','Ortigoza Campos Andrés'),('apsanchezm@ipn.mx','Sánchez Moreno Adriana de la Paz'),('arilopez@ipn.mx','López Rojas Ariel'),('ascifuentesa@ipn.mx','Cifuentes Álvarez Alejandro Sigfrido'),('atesta@ipn.mx','Testa Nava Alexis'),('auriartea@ipn.mx','Uriarte Arcia Abril Valeria'),('awinfieldr@ipn.mx','Winfield Reyes Ana María'),('azaratec@ipn.mx','Zárate Cárdenas Alejandro'),('bcelisd@ipn.mx','Celis Domínguez Adriana Berenice'),('bcruzt@ipn.mx','Cruz Torres Benjamín'),('becarvajal@ipn.mx','Carvajal Gámez Blanca Esther'),('belopezg@correoipn.onmicrosoft.com','López Carrera Benjamín'),('blunab@ipn.mx','Luna Benoso Benjamín'),('calbortantem@ipn.mx','Albortante Morato Cecilia'),('calopezr@ipn.mx','López Rodríguez Claudia Alejandra'),('capineda@ipn.mx','Pineda Guerrero Carlos'),('cavilas@ipn.mx','Ávila Sánchez Cristhian Alejandro'),('ccarretoa@ipn.mx','Carreto Arellano Chadwick'),('ccdiaz@ipn.mx','Díaz Huerta Claudia Celia'),('cdorantesv@ipn.mx','Dorantes Villa Claudia Jisela'),('cgalindod@ipn.mx','Galindo Durán Cristal Karina'),('cjuarezl@ipn.mx','Juárez León Carlos'),('cmartinezg@ipn.mx','Martínez García César Román'),('cmujica@ipn.mx','Mújica Ascencio César'),('cpastrana@ipn.mx','Pastrana Fernández Carlos Jesús'),('cvgarcia@ipn.mx','García Mendoza Consuelo Varinia'),('chernandezva@ipn.mx','Hernández Vásquez César'),('cherreray@ipn.mx','Herrera Yañez Crispin'),('chlealpa@ipn.mx','Leal Pacheco Christian René'),('daguilarve@ipn.mx','Aguilar Velázquez Daniel'),('daraujo@ipn.mx','Araujo Díaz David'),('dcruzg@ipn.mx','Cruz García Daniel'),('dfernandezb@ipn.mx','Fernández Bretón David José'),('dgutierrezm@ipn.mx','Gutiérrez Mejía Darwin'),('dojedag@ipn.mx','Ojeda Guillén Didier'),('eajimenez@ipn.mx','Jiménez Contreras Edith Adriana'),('ecatalans@ipn.mx','Catalán Salgado Edgar Armando'),('echavezl@ipn.mx','Chávez Lima Eduardo'),('echerrera@ipn.mx','Herrera Luna Edith Cristina'),('edfrancom@ipn.mx','Franco Martínez Edgardo Adrián'),('eduranc@ipn.mx','Durán Camarillo Edmundo René'),('egutierreza@ipn.mx','Gutiérrez Aldana Eduardo'),('ehernandezru@ipn.mx','Hernández Rubio Erika'),('eherreras@ipn.mx','Herrera Salgado Ephrain'),('elinares@ipn.mx','Linares Vallejo Erick Eugenio'),('emendozam@ipn.mx','Mendoza Macías Elba'),('emorenog@ipn.mx','Moreno Galván Elizabeth'),('erodrigrezf@ipn.mx','Rodríguez Flores Eduardo'),('eruizl@ipn.mx','Ruíz Ledesma Elena Fabiola'),('esalinas@ipn.mx','Salinas Hernández Encarnación'),('esantiagov@ipn.mx','Santiago Valentín Eric'),('etorres@ipn.mx','Torres González Enrique'),('etramirez@ipn.mx','Ramírez Martínez Elia Tzindejhé'),('faguilars@ipn.mx','Aguilar Sánchez Fernando'),('faviles@ipn.mx','Hernández Aviles Fernando Dante'),('ffigueroad@ipn.mx','Figueroa Del Prado Felipe de Jesús'),('fgasparm@ipn.mx','Gaspar Medina Fabián'),('fguzmana@ipn.mx','Guzmán Aguilar Florencio'),('fmaciasp@ipn.mx','Macías Pérez Francisco Javier'),('focampob@ipn.mx','Ocampo Botello Fabiola'),('gcabrerac@ipn.mx','Cabrera Chávez Gloría Lourdes'),('gcastilloc@ipn.mx','Castillo Cabrera Gelacio'),('ggonzaleza@ipn.mx','González Albarrán Gisela'),('gjuarezm@ipn.mx','Juárez Martínez Genaro'),('glopezru@ipn.mx','López Ruíz Gabriela de Jesús'),('gmarquez@ipn.mx','Márquez Arreguín Guillermo'),('grodriguezj@ipn.mx','Rodríguez Jordán Gabriel de Jesús'),('gsanchezq@ipn.mx','Sánchez Quintanilla Gilberto'),('gugonzalezg@ipn.mx','González García Gustavo'),('gvera@ipn.mx','Vera Hernández Gumersindo'),('hmanzanilla@ipn.mx','Manzanilla Granados Héctor Manuel'),('iblancoa@ipn.mx','Blanco Almazan Ivan Eduardo'),('ibuitron@ipn.mx','Buitrón Damaso Israel'),('icervantesd@ipn.mx','Cervantes De Anda Ismael'),('idiazt@ipn.mx','Díaz Toalá Iván'),('iflorese@ipn.mx','Flores Estrada Ituriel Enrique'),('igmosso@ipn.mx','Mosso García Iván Giovanny'),('imaldonadoc@ipn.mx','Maldonado Castillo Idalia'),('iriost@ipn.mx','Ríos de la Torre Ignacio'),('irojasm@ipn.mx','Rojas Mexicano Ismael'),('isalasr@ipn.mx','Salas Ramirez Israel'),('isalgador@ipn.mx','Salgado Ramos Iván de Jesús'),('isanchezmen@ipn.mx','Sánchez Mendoza Israel'),('jajimenezb@ipn.mx','Jiménez Benítez José Alfredo'),('jamartinezg@ipn.mx','Martínez Guerrero José Alfredo'),('jarzateg@ipn.mx','Arzate Gordillo Jacqueline'),('jbarron@ipn.mx','Barrón Vera Josue Emanuel'),('jcarbajalh@ipn.mx','Carbajal Hernández José Juan'),('jcarballo@ipn.mx','Carballo Jiménez Juan Manuel'),('jcastillom@ipn.mx','Castillo Marrufo Juan Antonio'),('jcmartinezd@ipn.mx','Martínez Díaz Juan Carlos'),('jcortesg@ipn.mx','Cortés Galicia Jorge'),('jcruzro@ipn.mx','Cruz Rojas Jorge Alberto'),('jchernandezs@ipn.mx','Hernández Secundino José Celestino Elías'),('jdavalosl@ipn.mx','Dávalos López José Carlos'),('jenriquezz@ipn.mx','Enríquez Zárate José Asunción'),('jesquivelc@ipn.mx','Esquivel Centeno José Armando'),('jferrert@ipn.mx','Ferrer Tenorio Jorge'),('jflorese@ipn.mx','Flores Escobar José Antonio'),('jfserrano@ipn.mx','Serrano Talamantes José Felix'),('jgarciasa@ipn.mx','García Sales Juan Vicente'),('jgrodriguezv@ipn.mx','Rodríguez Villarreal José Gregorio'),('jgutierrezg@ipn.mx','Gutiérrez García Juan Jesús'),('jguzmanf@ipn.mx','Guzmán Flores Jessie Paulina'),('jjalcarazt@ipn.mx','Alcaraz Torres Juan Jesús'),('jjsilva@ipn.mx','Silva Martínez Jorge Javier'),('jjuarezg@ipn.mx','Juárez Gambino Joel Omar'),('jjuarezr@ipn.mx','Juárez Ramírez Jazmín Adriana'),('jlhernandeza@ipn.mx','Hernández Aguilar José Luis'),('jlopezra@ipn.mx','López Rabadan José Jaime'),('jlrosas@ipn.mx','Rosas Trigueros Jorge Luís'),('jmartinezn@ipn.mx','Martínez Nuño Jesús Alfredo'),('jmartinezp@ipn.mx','Martínez Perales José Cruz'),('jmlopezs@ipn.mx','López Sánchez José Manuel'),('jmoralesc@ipn.mx','Morales Cruz Juan Carlos'),('jnavala@ipn.mx','Nava Lara Joel'),('johernandezja@ipn.mx','Hernández Jaime Josefína'),('jolivaresc@ipn.mx','Olivares Ceja Jesús Manuel'),('jortizr@ipn.mx','Ortíz Ramírez José Antonio'),('jortunoa@ipn.mx','Ortuño Araujo Jesús'),('jperezp@ipn.mx','Pérez Pérez José Juan'),('jpuebla@ipn.mx','Puebla Lomas Jaime Hugo'),('jrangelgo@ipn.mx','Rangel González Josué'),('jrueda@ipn.mx','Rueda Meléndez José Marco Antonio'),('jsanchezar@ipn.mx','Sánchez Arroyo José Emilio'),('jsanchezju@ipn.mx','Sánchez Juárez José'),('jtellezb@ipn.mx','Téllez Barrera Juan Carlos'),('jtirado@ipn.mx','Tirado Lule Judith Margarita'),('jvasquezg@ipn.mx','Vasquez Gomez Juan Irving'),('kviveros@ipn.mx','Viveros Vela Karina'),('lcanedos@ipn.mx','Cañedo Suárez Leticia'),('lcervantese@ipn.mx','Cervantes Espinosa Luis Moctezuma'),('lchavarria@ipn.mx','Chavarría Báez Lorena'),('lehernandez@ipn.mx','Hernández Olvera Luis Enrique'),('levazquezg@ipn.mx','Vázquez González Leonor'),('lfernandezq@ipn.mx','Fernández Quiroz Silvia Leticia'),('lhenestrosa@ipn.mx','Henestrosa Carrasco Leticia'),('lmartineza@ipn.mx','Martínez Acosta Lilian'),('lmendezs@ipn.mx','Méndez Segundo Laura'),('lmsanchez@ipn.mx','Sánchez García Luz María'),('lmunozs@ipn.mx','Muñoz Salazar Laura'),('lolopez@ipn.mx','López Leyva Luis Octavio'),('llazcano@ipn.mx','Lazcano Xoxotla Laura'),('madorantesg@ipn.mx','Dorantes González Marco Antonio'),('magomezt@ipn.mx','Gómez Tress Mariana'),('mahernandezc@ipn.mx','Hernández Cruz Macario'),('maleman@ipn.mx','Alemán Arce Miguel Ángel'),('mamoreno@ipn.mx','Moreno Armendáriz Marco Antonio'),('maragong@ipn.mx','Aragón García Maribel'),('marodriguezc@ipn.mx','Rodríguez Castillo Miguel Ángel'),('mcorderol@ipn.mx','Cordero López Martha Rosa'),('mcruzm@ipn.mx','Cruz Meza María Elena'),('mgaleanac@ipn.mx','Galeana Chávez María del Rosario'),('mgalinanesr@ipn.mx','Galiñanes Rodríguez María Gabriela'),('mgonzalezr@ipn.mx','González Ramírez Marko Alfonso'),('mgonzalezt@ipn.mx','González Trujillo Miguel Ángel'),('mjimenezv@ipn.mx','Jiménez Villanueva Martha Patricia'),('mleonh@ipn.mx','León Hernández Miguel Abel'),('mmaldonadom@ipn.mx','Maldonado Muñoz Miguel Ángel'),('mparedesc@ipn.mx','Paredes Cadena Myriam Noemí'),('mperezve@ipn.mx','Pérez Vera Monserrat Gabriela'),('mpescadorr@ipn.mx','Pescador Rojas Miriam'),('mriverad@ipn.mx','Rivera De la Rosa Mónica'),('mrodriguezor@ipn.mx','Rodríguez Ordaz Marisol'),('msalazarra@ipn.mx','Salazar Ramírez Manuel'),('msanchezbr@ipn.mx','Sánchez Brito Miguel'),('mscenteno@ipn.mx','Centeno Arrazola Maria Soledad'),('msolorzag@ipn.mx','Solorza Guzmán Misael'),('msotor@ipn.mx','Soto Ramos Manuel Alejandro'),('mssanchezp@ipn.mx','Sánchez Palacios María Susana'),('mssuarez@correoipn.onmicrosoft.com','Suárez Castañón Miguel Santiago'),('mtenorio@ipn.mx','Tenorio Marrón Marco Antonio'),('mtorresru@ipn.mx','Torres Ruíz Miguel Jesús'),('mvazquezo@ipn.mx','Vázquez Ortiz Mijaíl'),('nafloresf@ipn.mx','Flores Fuentes Naria Adriana'),('ncolinh@ipn.mx','Colin Hernández Nestor'),('ncortezd@ipn.mx','Cortez Duarte Nidia Asunción'),('nocotitla@ipn.mx','Ocotitla Rojas Nancy'),('nvegag@ipn.mx','Vega García Nayeli'),('ocancino@ipn.mx','Cancino Mosqueda Odette Berenice'),('ocarranzac@ipn.mx','Carranza Castillo Oscar'),('okolesnikova@ipn.mx','Kolesnikova Olga'),('osanchezg@ipn.mx','Sánchez García Octavio'),('pescamilla@ipn.mx','Escamilla Miranda Patricia'),('pmatag@ipn.mx','Mata Gil Patricia'),('psanchezv@ipn.mx','Sánchez Vargas Perla Rebeca'),('racostab@ipn.mx','Acosta Bermejo Raúl'),('rafloresd@ipn.mx','Flores Delgado Raquel'),('raguilarg@ipn.mx','Aguilar García Rafael'),('ralmazanf@ipn.mx','Almazán Farfán Rocío'),('rbarronf@ipn.mx','Barrón Fernández Ricardo'),('rbjimenez@ipn.mx','Jiménez Ruíz René Baltazar'),('rceballoss@ipn.mx','Ceballos Sebastián Ricardo'),('rdeluna@ipn.mx','De Luna Caballero Roberto'),('rdiazs@ipn.mx','Díaz Santiago Ricardo Felipe'),('remabarca@ipn.mx','Melara Abarca Reyna Elia'),('rgaliciam@ipn.mx','Galicia Mejía Rubén'),('rhernandezg@ipn.mx','Hernández García Rosa Alba'),('rjuradoj@ipn.mx','Jurado Jiménez Roberto'),('rortegag@ipn.mx','Ortega González Rubén'),('rpalacioss@ipn.mx','Palacios Solano Rocío'),('rpalma@ipn.mx','Palma Orozco Rosaura'),('rperedo@ipn.mx','Peredo Valderrama Rubén'),('rquintero@ipn.mx','Quintero Téllez Rolando'),('rramirezt@ipn.mx','Ramírez Tenorio Rafael'),('rresendizm@ipn.mx','Reséndiz Muñoz Rocío'),('rrocha@ipn.mx','Rocha Bernabé María del Rosario'),('rromeroh@ipn.mx','Romero Herrera Rodolfo'),('rrosales@ipn.mx','Martínez Rosales Ricardo'),('rsantillan@ipn.mx','Santillán Luna Raúl'),('rsaucedo@ipn.mx','Saucedo Delgado Rafael Norman'),('rteclap@ipn.mx','Tecla Parra Roberto'),('rvazquezar@ipn.mx','Vázquez Arreguín Roberto'),('rzagalf@ipn.mx','Zagal Flores Roberto Eswart'),('sbautistar@ipn.mx','Bautista Rosales Sandra Ivette'),('scancino@ipn.mx','Cancino Calderón Sergio'),('sdelaot@ipn.mx','De la O Torres Saúl'),('sdiazsa@ipn.mx','Díaz Santiago Sandra'),('sestradae@ipn.mx','Estrada Elizalde Serafín'),('slevariom@ipn.mx','Levario Medina Sergio'),('slmorales@ipn.mx','Morales Güitrón Sandra Luz'),('sperezv@ipn.mx','Pérez Vera Sandra Mercedes'),('ssalinasl@ipn.mx','Salinas Lugo Sergio'),('stellez@ipn.mx','Téllez Reyes Ma. Socorro'),('svillegasn@ipn.mx','Villegas Navarrete Sonia'),('tperezdm@ipn.mx','Pérez de los Santos Mondragón Tanibet'),('tramirezr@ipn.mx','Ramírez Romero Tonáhtiu Arturo'),('treyesb@ipn.mx','Reyes Bermejo Tlatoani de Jesús'),('tsarabiar@ipn.mx','Rodríguez Sarabia Tania'),('ucoronab@ipn.mx','Corona Bermúdez Uriel'),('ucoronillac@ipn.mx','Coronilla Contreras Ukranio'),('umoralesr@ipn.mx','Morales Rodríguez Úrsula Samantha'),('uvelez@ipn.mx','Vélez Saldaña Ulises'),('vagustin@ipn.mx','Agustín Domínguez Verónica'),('vgarciao@ipn.mx','García Ortega Victor Hugo'),('vmedinam@ipn.mx','Medina Mejía Virginia'),('vpereza@ipn.mx','Pérez Abreu Víctor'),('vsanchezcr@ipn.mx','Sánchez Cruz Virginia'),('vsilvag@ipn.mx','Silva García Victor Manuel'),('yfloresme@ipn.mx','Flores Mendoza Yaxkin'),('yjimenezg@ipn.mx','Jiménez Galán Yasmín Ivette'),('ymoscoso@ipn.mx','Moscoso Malagón Yosafat'),('ypachucah@ipn.mx','Pachuca Herrera Yanira'),('ysfloresm@ipn.mx','Flores Meraz Yesica Sonia'),('zmiguelp@ipn.mx','Miguel Pilar Zelin');
/*!40000 ALTER TABLE `profesor_informacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor_topicoprof`
--

DROP TABLE IF EXISTS `profesor_topicoprof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor_topicoprof` (
  `id_proftopicp` int NOT NULL,
  `mail_profin` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `id_topicprof` int NOT NULL,
  PRIMARY KEY (`id_proftopicp`),
  KEY `fk_topicoprofesor_profesortopico_idx` (`id_topicprof`),
  KEY `fk_profesorin_profesortopic_idx` (`mail_profin`),
  CONSTRAINT `fk_profesorin_profesortopic` FOREIGN KEY (`mail_profin`) REFERENCES `profesor_informacion` (`mail_profin`) ON UPDATE CASCADE,
  CONSTRAINT `fk_topicoprofesor_profesortopico` FOREIGN KEY (`id_topicprof`) REFERENCES `topico_profesor` (`id_topicprof`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor_topicoprof`
--

LOCK TABLES `profesor_topicoprof` WRITE;
/*!40000 ALTER TABLE `profesor_topicoprof` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor_topicoprof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor_usuario`
--

DROP TABLE IF EXISTS `profesor_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor_usuario` (
  `mail_profusu` varchar(50) NOT NULL,
  `name_profusu` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `pass_profusu` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `active_profusu` int NOT NULL DEFAULT '2',
  `vercod_profusu` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`mail_profusu`),
  UNIQUE KEY `mail_profusu_UNIQUE` (`mail_profusu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor_usuario`
--

LOCK TABLES `profesor_usuario` WRITE;
/*!40000 ALTER TABLE `profesor_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptt`
--

DROP TABLE IF EXISTS `ptt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ptt` (
  `num_ptt` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `name_ptt` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `autor_ptt` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `keywords_ptt` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `date_ptt` date NOT NULL,
  `abstract_ptt` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `link_ptt` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`num_ptt`),
  UNIQUE KEY `num_ptt_UNIQUE` (`num_ptt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptt`
--

LOCK TABLES `ptt` WRITE;
/*!40000 ALTER TABLE `ptt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ptt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptt_profesor`
--

DROP TABLE IF EXISTS `ptt_profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ptt_profesor` (
  `id_pttprof` int NOT NULL,
  `num_ptt` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `mail_profin` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_pttprof`),
  KEY `fk_ptt_pttprofesor_idx` (`num_ptt`),
  KEY `fk_profesorin_pttprofesor_idx` (`mail_profin`),
  CONSTRAINT `fk_profesorin_pttprofesor` FOREIGN KEY (`mail_profin`) REFERENCES `profesor_informacion` (`mail_profin`) ON UPDATE CASCADE,
  CONSTRAINT `fk_ptt_pttprofesor` FOREIGN KEY (`num_ptt`) REFERENCES `ptt` (`num_ptt`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptt_profesor`
--

LOCK TABLES `ptt_profesor` WRITE;
/*!40000 ALTER TABLE `ptt_profesor` DISABLE KEYS */;
/*!40000 ALTER TABLE `ptt_profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptt_topicptt`
--

DROP TABLE IF EXISTS `ptt_topicptt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ptt_topicptt` (
  `id_ptttopic` int NOT NULL,
  `num_ptt` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `id_topicptt` int NOT NULL,
  PRIMARY KEY (`id_ptttopic`),
  KEY `fk_ptt_ptttopicptt_idx` (`num_ptt`),
  KEY `fk_topicoptt_ptttopicptt_idx` (`id_topicptt`),
  CONSTRAINT `fk_ptt_ptttopicptt` FOREIGN KEY (`num_ptt`) REFERENCES `ptt` (`num_ptt`) ON UPDATE CASCADE,
  CONSTRAINT `fk_topicoptt_ptttopicptt` FOREIGN KEY (`id_topicptt`) REFERENCES `topico_ptt` (`id_topicptt`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptt_topicptt`
--

LOCK TABLES `ptt_topicptt` WRITE;
/*!40000 ALTER TABLE `ptt_topicptt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ptt_topicptt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topico_profesor`
--

DROP TABLE IF EXISTS `topico_profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topico_profesor` (
  `id_topicprof` int NOT NULL,
  `name_topicprof` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_topicprof`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topico_profesor`
--

LOCK TABLES `topico_profesor` WRITE;
/*!40000 ALTER TABLE `topico_profesor` DISABLE KEYS */;
/*!40000 ALTER TABLE `topico_profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topico_ptt`
--

DROP TABLE IF EXISTS `topico_ptt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topico_ptt` (
  `id_topicptt` int NOT NULL,
  `name_topicptt` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_topicptt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topico_ptt`
--

LOCK TABLES `topico_ptt` WRITE;
/*!40000 ALTER TABLE `topico_ptt` DISABLE KEYS */;
/*!40000 ALTER TABLE `topico_ptt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tcube'
--

--
-- Dumping routines for database 'tcube'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-23 19:34:16
