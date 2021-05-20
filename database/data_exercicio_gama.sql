-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: gama_exercicio_3
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Dumping data for table `cidade_estado`
--

LOCK TABLES `cidade_estado` WRITE;
/*!40000 ALTER TABLE `cidade_estado` DISABLE KEYS */;
INSERT INTO `cidade_estado` VALUES (1,'Recife','PE'),(2,'São Paulo','SP'),(3,'Santa Isabel','SP'),(4,'Rio de Janeiro','RJ'),(5,'Osasco','SP');
/*!40000 ALTER TABLE `cidade_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Leandro Dias',11912212112,'leandro','leandro_dias9@hotmail.com'),(2,'João Miguel',11911111111,'joao','joaomiguel@gmail.com'),(3,'Beatriz Lima',11933333333,'beatriz','beatrizlima@gmail.com'),(4,'Fernando Augusto',11934343434,'fernando','fernando@gmail.com'),(5,'Afonso Azevedo',11988888888,'afonso','afonsoazevedo');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Informática'),(2,'Eletrônicos'),(3,'Acessórios'),(4,'Games'),(5,'Adaptadores');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Residencial','Monte alegre','649','Perdizes','12','06064640',2,2),(2,'Comercial','Avenida','650','Pacaembu','1213','01530231',2,3),(3,'Residencial','Rua Aimberê','150','Perdizes','46','06064640',2,1),(4,'Residencial','Avenida da republica','630','Centro','88','06064640',3,4),(5,'Vila','Bela Vista','630','Perdizes','99','06064640',4,5);
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,1,200),(2,2,400),(3,3,0),(4,4,800),(5,5,1000);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,20211,'2021-05-20 14:00:00',1,1),(2,20212,'2021-05-20 14:01:00',1,2),(3,20213,'2021-05-20 14:02:00',2,3),(4,20214,'2021-05-20 14:03:00',2,4),(5,20215,'2021-05-20 14:04:00',3,5),(6,20216,'2021-05-20 14:05:00',4,6),(7,20217,'2021-05-20 14:06:00',4,7),(8,20218,'2021-05-20 14:07:00',5,8);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos_status`
--

LOCK TABLES `pedidos_status` WRITE;
/*!40000 ALTER TABLE `pedidos_status` DISABLE KEYS */;
INSERT INTO `pedidos_status` VALUES (1,'Novo Pedido'),(2,'Cancelado'),(3,'Aguardando pagamento'),(4,'Pagamento autorizado'),(5,'Pagamento negado'),(6,'Em separação'),(7,'Em transporte'),(8,'Entregue');
/*!40000 ALTER TABLE `pedidos_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,500,'Mouse Wireless',150,1,1,1),(2,501,'Kindle',331,1,1,2),(3,502,'Smart Watch',250,0,0,3),(4,503,'Dark Souls',199,1,1,4),(5,504,'Adaptador Mini Display',41,1,1,5);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produtos_pedidos`
--

LOCK TABLES `produtos_pedidos` WRITE;
/*!40000 ALTER TABLE `produtos_pedidos` DISABLE KEYS */;
INSERT INTO `produtos_pedidos` VALUES (1,150,'Mouse Wireless',3,450,1),(2,331,'Kindle',1,331,2),(3,199,'Dark Souls',1,199,3),(4,199,'Dark Souls',3,597,4),(5,199,'Dark Souls',5,995,5),(6,199,'Dark Souls',5,995,6),(7,199,'Dark Souls',6,1194,7),(8,199,'Dark Souls',7,1393,8);
/*!40000 ALTER TABLE `produtos_pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 20:19:04
