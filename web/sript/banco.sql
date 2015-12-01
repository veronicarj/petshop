/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pet` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;

USE `pet`;

/*Table structure for table `categorias` */

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `categorias` */

insert  into `categorias`(`idCategoria`,`nome`) values (1,'Perfume'),(2,'Cama'),(3,'Ração'),(4,'Remédio'),(5,'Acessório'),(6,NULL);

/*Table structure for table `produtos` */

CREATE TABLE `produtos` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `codigo` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `descricao` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `foto` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `produtos` */

insert  into `produtos`(`idProduto`,`nome`,`codigo`,`preco`,`descricao`,`foto`,`categoria`) values (1,'Cama','PET001',120,'Em tecido 100% algodão','001.jpg',2),(2,'Kit Lavanda','PET002',30,'Perfume, Loção e Xampu','002.jpg',1),(3,'Ração sabor carne','PET003',30,'Sem conservantes','003.jpg',3),(4,'Ração sabor frango','PET004',25,'Sem conservantes','004.jpg',3),(5,'Vermífugo','PET005',15,'Vermífugo para cães','005.jpg',4),(6,'Comedouro','PET006',80,'Comedouro para cães em plástico','006.jpg',NULL),(7,'Coleira','PET007',20,'Coleira para cães médios','007.jpg',5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
