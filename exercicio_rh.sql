-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rh
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `tb_funcionarios`
--

DROP TABLE IF EXISTS `tb_funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_funcionarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(150) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `data_admissão` date NOT NULL,
  `usuario_corporativo` varchar(100) NOT NULL,
  `salario` decimal(10,0) NOT NULL,
  `status_funcionario` varchar(15) DEFAULT 'Ativo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionarios`
--

LOCK TABLES `tb_funcionarios` WRITE;
/*!40000 ALTER TABLE `tb_funcionarios` DISABLE KEYS */;
INSERT INTO `tb_funcionarios` VALUES (1,'Paulo Gustavo Brito','Manager Tech','2026-01-23','paulogsbrito',40000,'Ativo'),(2,'Neymar Junior','Manager','2026-01-23','njr',40000,'Convocado'),(3,'Ana Carolina Silva','Desenvolvedora Java Backend','2026-02-10','anasilva',8500,'Afastado'),(4,'Carlos Eduardo Souza','Analista de Dados','2026-03-15','carlossouza',7200,'Ativo'),(5,'Mariana Costa Oliveira','Product Owner','2025-11-01','marianacosta',12500,'Ativo'),(6,'Ricardo Alves Pereira','Engenheiro de DevOps','2026-04-02','ricardopereira',9800,'Ativo'),(7,'Lucas Martins Ferreira','Estagiário de Desenvolvimento','2026-02-01','lucasferreira',1500,'Ativo'),(8,'Juliana Mendes Rocha','Auxiliar Administrativo','2026-01-15','julianarocha',1850,'Ativo'),(9,'Gabriel Santos Almeida','Assistente de Suporte TI','2026-03-10','gabrielalmeida',1950,'Ativo'),(10,'Fernanda Lima Duarte','Estagiária de Design','2026-04-18','fernandaduarte',1400,'Afastado'),(11,'Rodrigo Melo Castro','Assistente de Atendimento','2026-02-20','rodrigocastro',1900,'Ativo'),(12,'Thiago Ramos Barbosa','Auxiliar de Escritório','2025-12-10','thiagobarbosa',1780,'Afastado'),(13,'Camila Vieira Sousa','Analista de Dados','2026-05-02','camilasousa',7200,'Ativo'),(14,'Lucas Martins Ferreira','Estagiário de Desenvolvimento','2026-02-01','lucasferreira',1500,'Ativo'),(15,'Juliana Mendes Rocha','Auxiliar Administrativo','2026-01-15','julianarocha',1850,'Ativo'),(16,'Gabriel Santos Almeida','Assistente de Suporte TI','2026-03-10','gabrielalmeida',1950,'Ativo'),(17,'Fernanda Lima Duarte','Estagiária de Design','2026-04-18','fernandaduarte',1400,'Ativo'),(18,'Thiago Ramos Barbosa','Auxiliar de Escritório','2025-12-10','thiagobarbosa',1780,'Ativo');
/*!40000 ALTER TABLE `tb_funcionarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-18 21:12:23
