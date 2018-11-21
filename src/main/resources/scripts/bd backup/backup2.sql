-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cursinho
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
INSERT INTO `disciplina` VALUES (1,'Biologia','Citologia','Composição Química e Bioquímica - Metabolismo','https://www.10emtudo.com.br/aula/vestibular/composicao_quimica_e_bioquimica_metabolismo/'),(2,'Biologia','Citologia','Composição Química - Modelos; Funções; especializações','https://www.10emtudo.com.br/aula/vestibular/composicao_quimica_modelos_funcoes_especializacoes/'),(3,'Biologia','Citologia','Permeabilidade','https://www.10emtudo.com.br/aula/vestibular/permeabilidade/'),(4,'Biologia','Citologia','Funções Metabólicas','https://www.10emtudo.com.br/aula/vestibular/funcoes_metabolicas/'),(6,'Biologia','Embriologia Animal','Segmentação (clivagem): tipos','https://www.10emtudo.com.br/aula/vestibular/segmentacao_clivagem_tipos/'),(7,'Biologia','Embriologia Animal','Desenvolvimento Embrionário do Anfioxo','https://www.10emtudo.com.br/aula/vestibular/desenvolvimento_embrionario_do_anfioxo/'),(8,'Biologia','Embriologia Animal','Folhetos Embrionários: tipos e funções','https://www.10emtudo.com.br/aula/vestibular/folhetos_embrionarios_tipos_e_funcoes/'),(10,'Biologia','Citologia','Citologia','https://www.educabras.com/ensino_medio/materia/biologia/citologia'),(11,'Biologia','Genetica Molecular','Genetica Molecular','https://www.educabras.com/ensino_medio/materia/biologia/genetica_molecular'),(12,'Biologia','Embriologia Animal','Embriologia Animal','https://www.educabras.com/ensino_medio/materia/biologia/embriologia_animal'),(13,'Biologia','Classificacao dos Seres Vivos','Classificacao dos Seres Vivos','https://www.educabras.com/ensino_medio/materia/biologia/classificacao_dos_seres_vivos'),(14,'Biologia','Reino Monera, Protista e Fungi','Reino Monera, Protista e Fungi','https://www.educabras.com/ensino_medio/materia/biologia/reino_monera_protista_e_fungi'),(15,'Biologia','Reino Vegetal','Reino Vegetal','https://www.educabras.com/ensino_medio/materia/biologia/reino_vegetal'),(16,'Biologia','Reino Animal','Reino Animal','https://www.educabras.com/ensino_medio/materia/biologia/reino_animal'),(17,'Biologia','Anatomia e Fisiologia','Anatomia e Fisiologia','https://www.educabras.com/ensino_medio/materia/biologia/anatomia_e_fisiologia_2'),(18,'Biologia','Saude de Doencas','Saude de Doencas','https://www.educabras.com/ensino_medio/materia/biologia/saude'),(19,'Biologia','Ecologia','Ecologia','https://www.educabras.com/ensino_medio/materia/biologia/ecologia'),(20,'Biologia','Genetica','Genetica','https://www.educabras.com/ensino_medio/materia/biologia/genetica'),(21,'Biologia','Evolucao','Evolucao','https://www.educabras.com/ensino_medio/materia/biologia/evolucao'),(22,'Portugues','Gramatica','Gramatica','https://www.educabras.com/ensino_medio/materia/portugues/gramatica'),(23,'Portugues','Literatura','Literatura','https://www.educabras.com/ensino_medio/materia/portugues/literatura'),(24,'Portugues','Interpretacao de Texto','Interpretacao de Texto','https://www.educabras.com/ensino_medio/materia/portugues/interpretacao_de_texto'),(25,'Matematica','Conjuntos','Conjuntos','https://www.educabras.com/ensino_medio/materia/matematica/aulas/conjuntos_numericos_operacoes_com_conjuntos'),(26,'Matematica','Fatoracao de Expressao algebrica','Fatoracao de Expressao algebrica','https://www.educabras.com/ensino_medio/materia/matematica/aulas/fatoracao_de_expressao_algebrica'),(27,'Matematica','Equacoes','Equacoes','https://www.educabras.com/ensino_medio/materia/matematica/aulas/equacoes'),(28,'Matematica','Inequacoes','Inequacoes','https://www.educabras.com/ensino_medio/materia/matematica/aulas/inequacoes_propriedades_das_inequacoes'),(29,'Matematica','Funcoes','Funcoes','https://www.educabras.com/ensino_medio/materia/matematica/aulas/funcoes_o_conjunto_imagem'),(30,'Matematica','Composicao de Funcoes','Composicao de Funcoes','https://www.educabras.com/ensino_medio/materia/matematica/aulas/composicao_de_funcoes'),(31,'Matematica','Funcao Inversa','Funcao Inversa','https://www.educabras.com/ensino_medio/materia/matematica/aulas/funcao_inversa'),(32,'Matematica','Progressoes','Progressoes','https://www.educabras.com/ensino_medio/materia/matematica/aulas/progressoes'),(33,'Matematica','Analise Combinatoria','Analise Combinatoria','https://www.educabras.com/ensino_medio/materia/matematica/aulas/analise_combinatoria_permutacoes_arranjos_combinacao_simples'),(34,'Matematica','Probabilidade','Probabilidade','https://www.educabras.com/ensino_medio/materia/matematica/aulas/probabilidade_conceito_de_probabilidade'),(35,'Matematica','Sistemas de Equacoes','Sistemas de Equacoes','https://www.educabras.com/ensino_medio/materia/matematica/aulas/sistema_de_equacoes_lineares'),(36,'Matematica','Numeros Complexos','Numeros Complexos','https://www.educabras.com/ensino_medio/materia/matematica/aulas/numeros_imaginarios_numeros_complexos'),(37,'Matematica','Funcao Polinomial','Funcao Polinomial','https://www.educabras.com/ensino_medio/materia/matematica/aulas/funcao_polinomial'),(38,'Matematica','Trigonometria','Trigonometria','https://www.educabras.com/ensino_medio/materia/matematica/aulas/sistema_de_coordenadas'),(39,'Historia','Historia Geral','Historia Geral','https://www.educabras.com/ensino_medio/materia/historia/historia_geral'),(40,'Historia','Historia do Brasil','Historia do Brasil','https://www.educabras.com/ensino_medio/materia/historia/historia_do_brasil'),(41,'Geografia','Geografia Fisica','Geografia Fisica','https://www.educabras.com/ensino_medio/materia/geografia/geografia_fisica'),(42,'Geografia','Meio Ambiente','Meio Ambiente','https://www.educabras.com/ensino_medio/materia/geografia/meio_ambiente_2'),(43,'Geografia','Populacao','Populacao','https://www.educabras.com/ensino_medio/materia/geografia/populacao'),(44,'Geografia','Urbanizacao','Urbanizacao','https://www.educabras.com/ensino_medio/materia/geografia/urbanizacao'),(45,'Geografia','Fontes de Energia','Fontes de Energia','https://www.educabras.com/ensino_medio/materia/geografia/fontes_de_energia'),(46,'Geografia','Regioes do Brasil','Regioes do Brasil','https://www.educabras.com/ensino_medio/materia/geografia/regioes_do_brasil'),(47,'Geografia','Sistemas Economicos','Sistemas Economicos','https://www.educabras.com/ensino_medio/materia/geografia/sistemas_economicos'),(48,'Geografia','Geografia Economica','Geografia Economica','https://www.educabras.com/ensino_medio/materia/geografia/geografia_economica'),(49,'Geografia','Continentes e Paises','Continentes e Paises','https://www.educabras.com/ensino_medio/materia/geografia/continentes_e_paises'),(50,'Geografia','Atualidades','Atualidades','https://www.educabras.com/ensino_medio/materia/geografia/atualidades'),(51,'Fisica','Grandezas Fisicas','Grandezas Fisicas','https://www.educabras.com/ensino_medio/materia/fisica/introducao_a_fisica'),(52,'Fisica','Mecanica','Mecanica','https://www.educabras.com/ensino_medio/materia/fisica/mecanica_cinematica'),(53,'Fisica','Eletricidade e Eletromagnetismo','Eletricidade e Eletromagnetismo','https://www.educabras.com/ensino_medio/materia/fisica/corrente_eletrica'),(54,'Fisica','Optica e Ondulatoria','Optica e Ondulatoria','https://www.educabras.com/ensino_medio/materia/fisica/optica'),(55,'Fisica','Fisica Moderna','Fisica Moderna','https://www.educabras.com/ensino_medio/materia/fisica/fisica_moderna'),(56,'Quimica','Propriedades da Materia','Propriedades da Materia','https://www.educabras.com/ensino_medio/materia/quimica/aulas/propriedades_fisicas_da_materia'),(57,'Quimica','Separacao de Misturas','Separacao de Misturas','https://www.educabras.com/ensino_medio/materia/quimica/aulas/separacao_de_misturas'),(58,'Quimica','Atomistica','Atomistica','https://www.educabras.com/ensino_medio/materia/quimica/aulas/atomistica_caracteristicas_dos_atomos'),(59,'Quimica','Classificacao dos Elementos','Classificacao dos Elementos','https://www.educabras.com/ensino_medio/materia/quimica/aulas/classificacao_dos_elementos'),(60,'Quimica','Formulas Quimicas','Formulas Quimicas','https://www.educabras.com/ensino_medio/materia/quimica/aulas/formulas_quimicas_molecular_minima_percentual'),(61,'Quimica','Leis Ponderais','Leis Ponderais','https://www.educabras.com/ensino_medio/materia/quimica/aulas/leis_ponderais_leis_de_proust_e_lavoisier'),(62,'Quimica','Solucoes','Solucoes','https://www.educabras.com/ensino_medio/materia/quimica/aulas/solucoes_estados_fisicos_das_solucoes'),(63,'Quimica','Propriedades Coligativas','Propriedades Coligativas','https://www.educabras.com/ensino_medio/materia/quimica/aulas/propriedades_coligativas'),(64,'Quimica','Termoquimica','Termoquimica','https://www.educabras.com/ensino_medio/materia/quimica/aulas/termoquimica_reacoes_endotermicas_e_exotermicas'),(65,'Quimica','Eletroquimica','Eletroquimica','https://www.educabras.com/ensino_medio/materia/quimica/aulas/eletroquimica'),(66,'Quimica','Quimica Organica','Quimica Organica','https://www.educabras.com/ensino_medio/materia/quimica/aulas/quimica_organica'),(67,'Quimica','Gases','Gases','https://www.educabras.com/ensino_medio/materia/quimica/aulas/gases_estado_gasoso'),(68,'Quimica','Oxidacao e Reducao','Oxidacao e Reducao','https://www.educabras.com/ensino_medio/materia/quimica/aulas/oxidacao_e_reducao_balanceamento_por_oxirreducao'),(69,'Ingles','Gramatica','Gramatica','https://www.educabras.com/ensino_medio/materia/ingles/ingles_gramatica'),(70,'Filosofia','Os Sofistas','Os Sofistas','https://www.10emtudo.com.br/aula/ensino/os_sofistas/'),(71,'Filosofia','Socrates','Socrates','https://www.10emtudo.com.br/aula/ensino/socrates/'),(72,'Filosofia','Renascimento','Renascimento','https://www.10emtudo.com.br/aula/ensino/filosofia_do_renascimento/'),(73,'Filosofia','Maquoavel','Maquoavel','https://www.10emtudo.com.br/aula/ensino/nicolau_maquiavel/'),(74,'Filosofia','Racionalismo','Racionalismo','https://www.10emtudo.com.br/aula/ensino/racionalismo/'),(75,'Filosofia','Kant','Kant','https://www.10emtudo.com.br/aula/ensino/immanuel_kant/'),(76,'Filosofia','Iluminismo','Iluminismo','https://www.10emtudo.com.br/aula/ensino/filosofia_do_iluminismo/'),(77,'Filosofia','Existencialismo','Existencialismo','https://www.10emtudo.com.br/aula/ensino/o_existencialismo/'),(78,'Sociologia','Processos Sociais','Processos Sociais','https://www.10emtudo.com.br/aula/ensino/processos_sociais/'),(79,'Sociologia','A Sociedade','A Sociedade','https://www.10emtudo.com.br/aula/ensino/a_sociedade/'),(80,'Sociologia','Grupos Sociais','Grupos Sociais','https://www.10emtudo.com.br/aula/ensino/grupos_sociais/'),(81,'Sociologia','Economia e Sociedade','Economia e Sociedade','https://www.10emtudo.com.br/aula/ensino/a_base_economica_da_sociedade/');
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
INSERT INTO `nota` VALUES ('Enem','789','Biologia','2.06'),('Enem','789','Filosofia','8.47'),('Enem','789','Física','9.43'),('Enem','789','Geografia','2.25'),('Enem','789','História','2.74'),('Enem','789','Inglês','1.67'),('Enem','789','Literatura','1.29'),('Enem','789','Matemática','3.38'),('Enem','789','Português','4.1'),('Enem','789','Química','9.46'),('Enem','789','Sociologia','5.94'),('Enem','daniRodriguez','Biologia','3.53'),('Enem','daniRodriguez','Filosofia','9.85'),('Enem','daniRodriguez','Física','0.86'),('Enem','daniRodriguez','Geografia','9.6'),('Enem','daniRodriguez','História','7.75'),('Enem','daniRodriguez','Inglês','5.05'),('Enem','daniRodriguez','Literatura','9.33'),('Enem','daniRodriguez','Matemática','6'),('Enem','daniRodriguez','Português','1.19'),('Enem','daniRodriguez','Química','1.09'),('Enem','daniRodriguez','Sociologia','6.86'),('Fuvest','789','Biologia','4'),('Fuvest','789','Filosofia','3'),('Fuvest','789','Física','5'),('Fuvest','789','Geografia','5'),('Fuvest','789','História','6'),('Fuvest','789','Inglês','5'),('Fuvest','789','Literatura','1'),('Fuvest','789','Matemática','7'),('Fuvest','789','Português','9'),('Fuvest','789','Química','10'),('Fuvest','789','Sociologia','2'),('Ita','789','Física','5'),('Ita','789','Inglês','4'),('Ita','789','Literatura','7'),('Ita','789','Matemática','6'),('Ita','789','Português','9'),('Ita','789','Química','8');
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
INSERT INTO `pessoa` VALUES ('Samuel','Silva','123','2','123',NULL),('Daniel','Romão','456','1','456','Biologia'),('Ricardo','Oliveira','789','0','789',NULL),('Ada','Lovelace','adaLove','1','matematica','Matematica'),('Aziz','AbSaber','aziz','1','geografia','Geografia'),('Charles','Darwin','cDarwin','1','dawinBoladao','Biologia'),('Clarice','Lispector','clariceL','1','lispector','Portugues'),('Daniel','Rodriguez','daniRodriguez','0','123',NULL),('Emile','Durkheim','emilia','1','durkein','Sociologia'),('George','Orwell','georginho','1','orwel','Ingles'),('Gustavo ','Araujo','guAraujo','1','123','Historia'),('Isaac','Newton','IsaacNovo','1','einsten','Fisica'),('Immanuel','Kant','manuel','1','filosofia','Filosofia'),('Marie','Curie','maria','1','calcuta','Quimica'),('Niccolo','Machiavelli','niccolo','1','machiavelli','Historia');
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

-- Dump completed on 2018-11-21 21:57:28
