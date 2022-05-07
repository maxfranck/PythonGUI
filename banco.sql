CREATE DATABASE IF NOT EXISTS `aprender_python` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `aprender_python`;

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`nome` varchar(255) NOT NULL,
`email` varchar(255) NOT NULL,
`telefone` char(11) DEFAULT NULL,
`create_time` timestamp NULL DEFAULT current_timestamp(),
PRIMARY KEY (`id`),
UNIQUE KEY `email_UNIQUE` (`email`),
UNIQUE KEY `CPF_UNIQUE` (`telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;