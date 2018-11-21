-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: cursinho
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
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `disciplina` (
  `id` int(11) NOT NULL,
  `nomedisciplina` varchar(25) NOT NULL,
  `grupoconteudo` varchar(255) NOT NULL,
  `conteudo` varchar(255) NOT NULL,
  `link` varchar(2555) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_Disciplina` (`grupoconteudo`,`conteudo`,`nomedisciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Biologia','Citologia','Composição Química e Bioquímica - Metabolismo','https://www.10emtudo.com.br/aula/vestibular/composicao_quimica_e_bioquimica_metabolismo/'),(2,'Biologia','Citologia','Composição Química - Modelos; Funções; especializações','https://www.10emtudo.com.br/aula/vestibular/composicao_quimica_modelos_funcoes_especializacoes/'),(3,'Biologia','Citologia','Permeabilidade','https://www.10emtudo.com.br/aula/vestibular/permeabilidade/'),(4,'Biologia','Citologia','Funções Metabólicas','https://www.10emtudo.com.br/aula/vestibular/funcoes_metabolicas/'),(6,'Biologia','Embriologia Animal','Segmentação (clivagem): tipos','https://www.10emtudo.com.br/aula/vestibular/segmentacao_clivagem_tipos/'),(7,'Biologia','Embriologia Animal','Desenvolvimento Embrionário do Anfioxo','https://www.10emtudo.com.br/aula/vestibular/desenvolvimento_embrionario_do_anfioxo/'),(8,'Biologia','Embriologia Animal','Folhetos Embrionários: tipos e funções','https://www.10emtudo.com.br/aula/vestibular/folhetos_embrionarios_tipos_e_funcoes/'),(9,'Biologia','Sistema Nervoso','Sistema Nervoso','https://www.10emtudo.com.br/aula/vestibular/sistema_nervoso/'),(10,'Historia','Hist�ria Geral','Pr� - Hist�ria','https://www.10emtudo.com.br/aula/vestibular/pre_historia/');
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (2);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nota` (
  `simulado` varchar(25) NOT NULL,
  `pessoaid` varchar(15) NOT NULL,
  `materia` varchar(25) NOT NULL,
  `nota` varchar(4) NOT NULL,
  PRIMARY KEY (`simulado`,`pessoaid`,`materia`),
  KEY `pessoaid` (`pessoaid`),
  KEY `simulado` (`simulado`,`materia`),
  CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`pessoaid`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` VALUES ('Fuvest','789','Biologia','4'),('Fuvest','789','Filosofia','3'),('Fuvest','789','Física','5'),('Fuvest','789','Geografia','5'),('Fuvest','789','História','6'),('Fuvest','789','Inglês','5'),('Fuvest','789','Literatura','1'),('Fuvest','789','Matemática','7'),('Fuvest','789','Português','9'),('Fuvest','789','Química','10'),('Fuvest','789','Sociologia','2'),('Ita','789','Física','5'),('Ita','789','Inglês','4'),('Ita','789','Literatura','7'),('Ita','789','Matemática','6'),('Ita','789','Português','9'),('Ita','789','Química','8'),('teste','789','Biologia','0,31'),('teste','789','Filosofia','9,89'),('teste','789','F�sica','9,13'),('teste','789','Geografia','4,77'),('teste','789','Hist�ria','4,1'),('teste','789','Ingl�s','7,73'),('teste','789','Literatura','2,64'),('teste','789','Matem�tica','5,11'),('teste','789','Portugu�s','7,39'),('teste','789','Qu�mica','7,56'),('teste','789','Sociologia','6,17'),('teste','daniRodriguez','Biologia','9,74'),('teste','daniRodriguez','Filosofia','0,75'),('teste','daniRodriguez','F�sica','5,5'),('teste','daniRodriguez','Geografia','5,36'),('teste','daniRodriguez','Hist�ria','1,02'),('teste','daniRodriguez','Ingl�s','7,76'),('teste','daniRodriguez','Literatura','2,7'),('teste','daniRodriguez','Matem�tica','4,89'),('teste','daniRodriguez','Portugu�s','3,2'),('teste','daniRodriguez','Qu�mica','0'),('teste','daniRodriguez','Sociologia','6,85');
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pessoa` (
  `nome` varchar(25) NOT NULL,
  `sobrenome` varchar(25) NOT NULL,
  `id` varchar(50) NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `senha` varchar(25) NOT NULL,
  `disciplina` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES ('Samuel','Silva','123','2','123',NULL),('Daniel','Romão','456','1','456','Biologia'),('Ricardo','Oliveira','789','0','789',NULL),('Daniel','Rodriguez','daniRodriguez','0','123',NULL),('Gustavo ','Araujo','guAraujo','1','123','Historia');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-21 11:53:04
