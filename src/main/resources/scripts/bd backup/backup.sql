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
  `idpessoa` varchar(15) NOT NULL,
  `nomedisciplina` varchar(25) NOT NULL,
  `grupoconteudo` varchar(255) NOT NULL,
  `conteudo` varchar(255) NOT NULL,
  `link` varchar(2555) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_Disciplina` (`grupoconteudo`,`conteudo`,`nomedisciplina`),
  KEY `idpessoa` (`idpessoa`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`idpessoa`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'456','Biologia','Citologia','Composição Química e Bioquímica - Metabolismo','https://www.10emtudo.com.br/aula/vestibular/composicao_quimica_e_bioquimica_metabolismo/'),(2,'456','Biologia','Citologia','Composição Química - Modelos; Funções; especializações','https://www.10emtudo.com.br/aula/vestibular/composicao_quimica_modelos_funcoes_especializacoes/'),(3,'456','Biologia','Citologia','Permeabilidade','https://www.10emtudo.com.br/aula/vestibular/permeabilidade/'),(4,'456','Biologia','Citologia','Funções Metabólicas','https://www.10emtudo.com.br/aula/vestibular/funcoes_metabolicas/'),(5,'456','Biologia','Embriologia Animal','Tipos de óvulos (ovos): classificação e ocorrência','https://www.10emtudo.com.br/aula/vestibular/tipos_de_ovulos_ovos_classificacao_e_ocorrencia/'),(6,'456','Biologia','Embriologia Animal','Segmentação (clivagem): tipos','https://www.10emtudo.com.br/aula/vestibular/segmentacao_clivagem_tipos/'),(7,'456','Biologia','Embriologia Animal','Desenvolvimento Embrionário do Anfioxo','https://www.10emtudo.com.br/aula/vestibular/desenvolvimento_embrionario_do_anfioxo/'),(8,'456','Biologia','Embriologia Animal','Folhetos Embrionários: tipos e funções','https://www.10emtudo.com.br/aula/vestibular/folhetos_embrionarios_tipos_e_funcoes/');
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
  CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`pessoaid`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`simulado`, `materia`) REFERENCES `simulado` (`nome`, `materia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` VALUES ('Fuvest','789','Biologia','4'),('Fuvest','789','Filosofia','3'),('Fuvest','789','Física','5'),('Fuvest','789','Geografia','5'),('Fuvest','789','História','6'),('Fuvest','789','Inglês','5'),('Fuvest','789','Literatura','1'),('Fuvest','789','Matemática','7'),('Fuvest','789','Português','9'),('Fuvest','789','Química','10'),('Fuvest','789','Sociologia','2'),('Ita','789','Física','5'),('Ita','789','Inglês','4'),('Ita','789','Literatura','7'),('Ita','789','Matemática','6'),('Ita','789','Português','9'),('Ita','789','Química','8');
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
  `id` varchar(15) NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `senha` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES ('Samuel','Silva','123','2','123'),('Daniel','Romão','456','1','456'),('Ricardo','Oliveira','789','0','789');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simulado`
--

DROP TABLE IF EXISTS `simulado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `simulado` (
  `nome` varchar(25) NOT NULL,
  `materia` varchar(25) NOT NULL,
  `notamax` varchar(4) NOT NULL,
  PRIMARY KEY (`nome`,`materia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simulado`
--

LOCK TABLES `simulado` WRITE;
/*!40000 ALTER TABLE `simulado` DISABLE KEYS */;
INSERT INTO `simulado` VALUES ('Enem','Biologia','10'),('Enem','Filosofia','5'),('Enem','Física','10'),('Enem','Geografia','10'),('Enem','História','10'),('Enem','Inglês','5'),('Enem','Literatura','10'),('Enem','Matemática','10'),('Enem','Português','10'),('Enem','Química','10'),('Enem','Sociologia','5'),('Fuvest','Biologia','10'),('Fuvest','Filosofia','5'),('Fuvest','Física','10'),('Fuvest','Geografia','10'),('Fuvest','História','10'),('Fuvest','Inglês','5'),('Fuvest','Literatura','10'),('Fuvest','Matemática','10'),('Fuvest','Português','10'),('Fuvest','Química','10'),('Fuvest','Sociologia','5'),('Ita','Física','10'),('Ita','Inglês','5'),('Ita','Literatura','10'),('Ita','Matemática','10'),('Ita','Português','10'),('Ita','Química','10');
/*!40000 ALTER TABLE `simulado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-20 16:18:09
