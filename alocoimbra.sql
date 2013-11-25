-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 25, 2013 at 01:51 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `alocoimbra`
--

-- --------------------------------------------------------

--
-- Table structure for table `aluguers`
--

DROP TABLE IF EXISTS `aluguers`;
CREATE TABLE IF NOT EXISTS `aluguers` (
  `ID` int(13) NOT NULL,
  `Alojamento` set('Individual','Duplo') NOT NULL,
  `Qualidade` int(2) NOT NULL,
  `Preco` int(11) NOT NULL,
  `Ordem` int(11) NOT NULL,
  KEY `Ordem` (`Ordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aluguers`
--

INSERT INTO `aluguers` VALUES(1, 'Individual', 2, 210, 1);
INSERT INTO `aluguers` VALUES(2, 'Individual', 2, 180, 1);
INSERT INTO `aluguers` VALUES(3, 'Individual', 2, 140, 2);
INSERT INTO `aluguers` VALUES(4, 'Individual', 0, 170, 3);
INSERT INTO `aluguers` VALUES(5, 'Individual', 1, 150, 4);
INSERT INTO `aluguers` VALUES(6, 'Individual', 0, 220, 5);
INSERT INTO `aluguers` VALUES(7, 'Individual', 1, 220, 6);
INSERT INTO `aluguers` VALUES(8, 'Individual', 2, 155, 7);
INSERT INTO `aluguers` VALUES(9, 'Individual', 2, 160, 7);
INSERT INTO `aluguers` VALUES(10, 'Individual', 2, 200, 8);
INSERT INTO `aluguers` VALUES(11, 'Individual', 2, 150, 9);
INSERT INTO `aluguers` VALUES(12, 'Individual', 1, 250, 10);
INSERT INTO `aluguers` VALUES(13, 'Individual', 0, 210, 11);
INSERT INTO `aluguers` VALUES(14, 'Individual', 2, 200, 12);
INSERT INTO `aluguers` VALUES(15, 'Individual', 2, 220, 12);
INSERT INTO `aluguers` VALUES(16, 'Duplo', 0, 100, 13);
INSERT INTO `aluguers` VALUES(17, 'Individual', 1, 200, 14);
INSERT INTO `aluguers` VALUES(18, 'Individual', 0, 130, 15);
INSERT INTO `aluguers` VALUES(19, 'Individual', 0, 140, 15);
INSERT INTO `aluguers` VALUES(20, 'Individual', 2, 160, 16);
INSERT INTO `aluguers` VALUES(21, 'Individual', 2, 160, 17);
INSERT INTO `aluguers` VALUES(22, 'Individual', 1, 190, 18);
INSERT INTO `aluguers` VALUES(23, 'Individual', 0, 140, 19);
INSERT INTO `aluguers` VALUES(24, 'Individual', 1, 180, 20);

-- --------------------------------------------------------

--
-- Stand-in structure for view `entradas`
--
DROP VIEW IF EXISTS `entradas`;
CREATE TABLE IF NOT EXISTS `entradas` (
`ID` int(13)
,`Visivel` tinyint(1)
,`Certificacao` tinyint(1)
,`Senhorio` tinyint(1)
,`Lavagem_roupa` tinyint(1)
,`Mobilado` tinyint(1)
,`Animais` tinyint(1)
,`Visitas` tinyint(1)
,`Agua` tinyint(1)
,`Luz` tinyint(1)
,`Gas` tinyint(1)
,`Internet` tinyint(1)
,`Outras_despesas` varchar(64)
,`Morada` varchar(256)
,`Zona` varchar(4)
,`Proprietario` varchar(64)
,`Contacto` varchar(64)
,`Email` varchar(64)
,`Inscricao_ano` year(4)
,`Numero_pessoas` int(7)
,`Min_meses` int(7)
,`Sexo` set('Masculino','Feminino','Ambos')
,`Cozinha` int(2)
,`Casa_de_banho` int(2)
,`Dimensoes` int(2)
,`Estado_casa` int(2)
,`Avaliador` varchar(64)
,`Tipo` set('Apartamento','Quarto','Residencia','Republica')
,`Visita` date
,`Pagamento` date
,`Qualidade` decimal(7,0)
,`MinPreco` bigint(20)
,`MaxPreco` bigint(20)
);
-- --------------------------------------------------------

--
-- Table structure for table `imagens`
--

DROP TABLE IF EXISTS `imagens`;
CREATE TABLE IF NOT EXISTS `imagens` (
  `ID` int(11) NOT NULL,
  `Ordem` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Ordem` (`Ordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imagens`
--


-- --------------------------------------------------------

--
-- Table structure for table `locais`
--

DROP TABLE IF EXISTS `locais`;
CREATE TABLE IF NOT EXISTS `locais` (
  `Nome` varchar(64) NOT NULL,
  `Descricao` mediumtext NOT NULL,
  `Longitude` double NOT NULL,
  `Latitude` double NOT NULL,
  UNIQUE KEY `Nome` (`Nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locais`
--

INSERT INTO `locais` VALUES('Pólo 1', '<p>O local central da universidade. Aqui ficam localizados vários serviços e departamentos, com:</p><ul><li>Direito<li>Letras<li>Medicina<li>Matemática<li>Física<li>Química<li>Antropologia<li>Arquitectura<li>Botânica<li>Zoologia<li>Psicologia</ul>', -8.424282, 40.208089);
INSERT INTO `locais` VALUES('Pólo 2', '<p>Aqui fica localizada a Faculdade de Ciências e Tecnologias, bem como os restantes departamentos constituintes desta faculdade:</p><ul><li>Engenharia Civil<li>Engenharia Electrotécnica e Computadores<li>Engenharia Informática<li>Engenharia Mecânica<li>Engenharia Química</ul>', -8.415634, 40.186288);
INSERT INTO `locais` VALUES('Pólo 3', '<p>Perto dos Hospitais da Universidade de Coimbra, neste pólo estão localizados alguns departamentos, como Farmácia e Medicina.</p>', -8.461056, 40.197981);

-- --------------------------------------------------------

--
-- Table structure for table `ordens`
--

DROP TABLE IF EXISTS `ordens`;
CREATE TABLE IF NOT EXISTS `ordens` (
  `ID` int(13) NOT NULL,
  `Visivel` tinyint(1) NOT NULL,
  `Certificacao` tinyint(1) NOT NULL,
  `Senhorio` tinyint(1) NOT NULL,
  `Lavagem_roupa` tinyint(1) NOT NULL,
  `Mobilado` tinyint(1) NOT NULL,
  `Animais` tinyint(1) NOT NULL,
  `Visitas` tinyint(1) NOT NULL,
  `Agua` tinyint(1) NOT NULL,
  `Luz` tinyint(1) NOT NULL,
  `Gas` tinyint(1) NOT NULL,
  `Internet` tinyint(1) NOT NULL,
  `Outras_despesas` varchar(64) NOT NULL,
  `Morada` varchar(256) NOT NULL,
  `Zona` varchar(4) NOT NULL,
  `Proprietario` varchar(64) NOT NULL,
  `Contacto` varchar(64) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Inscricao_ano` year(4) NOT NULL,
  `Numero_pessoas` int(7) NOT NULL,
  `Min_meses` int(7) NOT NULL,
  `Sexo` set('Masculino','Feminino','Ambos') NOT NULL,
  `Cozinha` int(2) NOT NULL,
  `Casa_de_banho` int(2) NOT NULL,
  `Dimensoes` int(2) NOT NULL,
  `Estado_casa` int(2) NOT NULL,
  `Avaliador` varchar(64) NOT NULL,
  `Tipo` set('Apartamento','Quarto','Residencia','Republica') NOT NULL,
  `Visita` date NOT NULL,
  `Pagamento` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordens`
--

INSERT INTO `ordens` VALUES(1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 'Limpeza', 'Rua do Loureiro, 17', 'D4', 'Fátima Esteves', '239 829 438;964 396 582', '', 2000, 16, 0, 'Masculino', 3, 2, 2, 2, '', 'Quarto', '2013-08-29', '2013-08-29');
INSERT INTO `ordens` VALUES(2, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, '', 'Rua António José de Almeida, 65 - R/C ', 'D3', 'Adília dos Santos Sousa', '239 828 611;963 535 340', '', 2000, 4, 0, 'Feminino', 0, 0, 0, 0, '', 'Quarto', '2013-08-03', '2013-08-30');
INSERT INTO `ordens` VALUES(3, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Limpeza', 'Avenida Sá da Bandeira, 110 - 1º', 'D4', 'Maria Luísa Baptista Mendes Gouveia', '239 717 303; 91 484 50 50', '', 2000, 4, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-09-07', '2013-09-17');
INSERT INTO `ordens` VALUES(4, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 'Limpeza', 'Rua do Brasil, 302 - 6º dtº (Calhabé)', 'E6', 'Maria da Glória Bernardo', '239 492 085; 911 990 548', '', 2000, 3, 0, 'Masculino', 0, 0, 0, 0, '', 'Quarto', '2013-08-22', '2013-08-22');
INSERT INTO `ordens` VALUES(5, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 'Limpeza', 'Rua Venâncio Rodrigues, nº 11 F (Praça da República) ', 'D4', 'Maria José Varandas Martins Silva', '968 203 553; 968 257 816; 917 508 813', 'mjmrst@gmail.com', 2000, 7, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-09-03', '2013-08-03');
INSERT INTO `ordens` VALUES(6, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 'Limpeza', 'Rua Dr. António de Vasconcelos, 119 - 2º', 'D3', 'Esmeralda Maria Machado Santos Vaz', '239 828 563; 966 052 670', '', 2000, 3, 0, 'Masculino', 0, 0, 0, 0, '', 'Quarto', '2013-03-22', '2013-08-22');
INSERT INTO `ordens` VALUES(7, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, '', 'Rua Dr. Augusto Rocha, 12', 'E3', 'Aida Fernanda Rodrigues', '91 915 37 44', '', 2000, 7, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-09-03', '2013-09-03');
INSERT INTO `ordens` VALUES(8, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 'Limpeza Semanal', 'Rua Pinheiro Chagas, 17 - 1º', 'F3', 'Ana Maria Pessoa Monteiro do Vale', '93 361 80 01; 239 483 618', 'anapessoavale@hotmail.com', 2000, 5, 0, 'Feminino', 0, 0, 0, 0, '', 'Quarto', '2013-08-21', '2013-08-21');
INSERT INTO `ordens` VALUES(9, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 'Limpeza', 'Rua Luís de Camões, 58 - 1º', 'F3', 'Maria do Rosário Duarte Dias', '965 007 818', 'mrosariodd@sapo.pt', 2000, 3, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-08-03', '2013-08-30');
INSERT INTO `ordens` VALUES(10, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, '', 'Rua Adelino Veiga, 23', 'C4', 'António João Rodrigues Freitas', '919 676 121', '', 2000, 10, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-07-03', '2013-08-01');
INSERT INTO `ordens` VALUES(11, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 'Limpeza, TV Cabo', 'Rua da Matemática, 10', 'D4', 'Albano Gomes Ventura', '239 824 351; 911 721 476', '', 2000, 14, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-09-11', '2013-09-11');
INSERT INTO `ordens` VALUES(12, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 'Limpeza', 'Rua da Manutenção Militar, 6', 'D3', 'Lucília de Jesus José Gil', '919 350 335', '', 2000, 11, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-09-17', '2013-09-18');
INSERT INTO `ordens` VALUES(13, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 'TV Cabo', 'Rua da Matemática, 2 - 2º', 'D4', 'Maria Lisete Soares', '239 820 929; 915 386 933', '', 2000, 10, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-06-25', '2013-06-25');
INSERT INTO `ordens` VALUES(14, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 'Limpeza', 'Rua Padre António Vieira, 4', 'D4', 'Cassilda de Jesus Fernandes', '239 824 748; 919 879 173', '', 2000, 10, 0, 'Feminino', 0, 0, 0, 0, '', 'Quarto', '2013-06-18', '2013-06-18');
INSERT INTO `ordens` VALUES(15, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Limpeza', 'Avenida Sá da Bandeira, 110 - 1º', 'D4', 'Maria Luísa Baptista Mendes Gouveia', '239 717 303; 91 484 50 50', '', 2000, 4, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-09-17', '2013-09-17');
INSERT INTO `ordens` VALUES(16, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 'Limpeza', 'Rua Adolfo Loureiro, 57 - 3º Esqª (Solum)', 'F6', 'Maria Rita Dias de Almeida Leite', '963 016 212; 919 520 981', 'm.rita.a.leite@gmail.com', 2000, 4, 0, 'Feminino', 0, 0, 0, 0, '', 'Quarto', '2013-08-03', '2013-08-30');
INSERT INTO `ordens` VALUES(17, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 'Limpeza', 'Rua Adolfo Loureiro, 118 - Cave Dtª', 'F6', 'Célia Maria Cravo Silvestre Batista', '919 868 735; 969 776 220', 'celia.batista@sapo.pt', 2000, 3, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-06-25', '2013-06-25');
INSERT INTO `ordens` VALUES(18, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 'Limpeza', 'Rua Guerra Junqueiro, 104 - 2º', 'D3', 'Maria Cândida São José Soares', '914 268 457; 239 832 684; 967 819 632', '', 2000, 5, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-08-09', '2013-09-02');
INSERT INTO `ordens` VALUES(19, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 'Limpeza', 'Rua Bernardo de Albuquerque, 104', 'F2', 'Maria Jerónima Soares de Albergaria Cabral', '239 482 212', 'coimbra104@gmail.com', 2000, 1, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-09-13', '2013-09-13');
INSERT INTO `ordens` VALUES(20, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, '', 'Rua António Jardim, 101 - 1º', 'G2', 'Ruben Manuel Antunes Tavares', '239 838 023; 919 975 114', 'ruben@avscentro.min-saude.pt', 2000, 3, 0, 'Ambos', 0, 0, 0, 0, '', 'Quarto', '2013-07-24', '2013-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `pontoszonas`
--

DROP TABLE IF EXISTS `pontoszonas`;
CREATE TABLE IF NOT EXISTS `pontoszonas` (
  `Nome` varchar(4) NOT NULL,
  `Latitude` double NOT NULL,
  `Longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pontoszonas`
--

INSERT INTO `pontoszonas` VALUES('D4', 40.20734, -8.42943);
INSERT INTO `pontoszonas` VALUES('D4', 40.20734, -8.42075);
INSERT INTO `pontoszonas` VALUES('D4', 40.21116, -8.42075);
INSERT INTO `pontoszonas` VALUES('D4', 40.21116, -8.42943);
INSERT INTO `pontoszonas` VALUES('D3', 40.21116, -8.42943);
INSERT INTO `pontoszonas` VALUES('D3', 40.21116, -8.42075);
INSERT INTO `pontoszonas` VALUES('D3', 40.21498, -8.42075);
INSERT INTO `pontoszonas` VALUES('D3', 40.21498, -8.42943);
INSERT INTO `pontoszonas` VALUES('D2', 40.21498, -8.42943);
INSERT INTO `pontoszonas` VALUES('D2', 40.21498, -8.42075);
INSERT INTO `pontoszonas` VALUES('D2', 40.2188, -8.42075);
INSERT INTO `pontoszonas` VALUES('D2', 40.2188, -8.42943);
INSERT INTO `pontoszonas` VALUES('D1', 40.2188, -8.42943);
INSERT INTO `pontoszonas` VALUES('D1', 40.2188, -8.42075);
INSERT INTO `pontoszonas` VALUES('D1', 40.22262, -8.42075);
INSERT INTO `pontoszonas` VALUES('D1', 40.22262, -8.42943);
INSERT INTO `pontoszonas` VALUES('D5', 40.20352, -8.42943);
INSERT INTO `pontoszonas` VALUES('D5', 40.20352, -8.42075);
INSERT INTO `pontoszonas` VALUES('D5', 40.20734, -8.42075);
INSERT INTO `pontoszonas` VALUES('D5', 40.20734, -8.42943);
INSERT INTO `pontoszonas` VALUES('D6', 40.1997, -8.42943);
INSERT INTO `pontoszonas` VALUES('D6', 40.1997, -8.42075);
INSERT INTO `pontoszonas` VALUES('D6', 40.20352, -8.42075);
INSERT INTO `pontoszonas` VALUES('D6', 40.20352, -8.42943);
INSERT INTO `pontoszonas` VALUES('D7', 40.19588, -8.42943);
INSERT INTO `pontoszonas` VALUES('D7', 40.19588, -8.42075);
INSERT INTO `pontoszonas` VALUES('D7', 40.1997, -8.42075);
INSERT INTO `pontoszonas` VALUES('D7', 40.1997, -8.42943);
INSERT INTO `pontoszonas` VALUES('D8', 40.19206, -8.42943);
INSERT INTO `pontoszonas` VALUES('D8', 40.19206, -8.42075);
INSERT INTO `pontoszonas` VALUES('D8', 40.19588, -8.42075);
INSERT INTO `pontoszonas` VALUES('D8', 40.19588, -8.42943);
INSERT INTO `pontoszonas` VALUES('C4', 40.20734, -8.43811);
INSERT INTO `pontoszonas` VALUES('C4', 40.20734, -8.42943);
INSERT INTO `pontoszonas` VALUES('C4', 40.21116, -8.42943);
INSERT INTO `pontoszonas` VALUES('C4', 40.21116, -8.43811);
INSERT INTO `pontoszonas` VALUES('C3', 40.21116, -8.43811);
INSERT INTO `pontoszonas` VALUES('C3', 40.21116, -8.42943);
INSERT INTO `pontoszonas` VALUES('C3', 40.21498, -8.42943);
INSERT INTO `pontoszonas` VALUES('C3', 40.21498, -8.43811);
INSERT INTO `pontoszonas` VALUES('C2', 40.21498, -8.43811);
INSERT INTO `pontoszonas` VALUES('C2', 40.21498, -8.42943);
INSERT INTO `pontoszonas` VALUES('C2', 40.2188, -8.42943);
INSERT INTO `pontoszonas` VALUES('C2', 40.2188, -8.43811);
INSERT INTO `pontoszonas` VALUES('C1', 40.2188, -8.43811);
INSERT INTO `pontoszonas` VALUES('C1', 40.2188, -8.42943);
INSERT INTO `pontoszonas` VALUES('C1', 40.22262, -8.42943);
INSERT INTO `pontoszonas` VALUES('C1', 40.22262, -8.43811);
INSERT INTO `pontoszonas` VALUES('C5', 40.20352, -8.43811);
INSERT INTO `pontoszonas` VALUES('C5', 40.20352, -8.42943);
INSERT INTO `pontoszonas` VALUES('C5', 40.20734, -8.42943);
INSERT INTO `pontoszonas` VALUES('C5', 40.20734, -8.43811);
INSERT INTO `pontoszonas` VALUES('C6', 40.1997, -8.43811);
INSERT INTO `pontoszonas` VALUES('C6', 40.1997, -8.42943);
INSERT INTO `pontoszonas` VALUES('C6', 40.20352, -8.42943);
INSERT INTO `pontoszonas` VALUES('C6', 40.20352, -8.43811);
INSERT INTO `pontoszonas` VALUES('C7', 40.19588, -8.43811);
INSERT INTO `pontoszonas` VALUES('C7', 40.19588, -8.42943);
INSERT INTO `pontoszonas` VALUES('C7', 40.1997, -8.42943);
INSERT INTO `pontoszonas` VALUES('C7', 40.1997, -8.43811);
INSERT INTO `pontoszonas` VALUES('C8', 40.19206, -8.43811);
INSERT INTO `pontoszonas` VALUES('C8', 40.19206, -8.42943);
INSERT INTO `pontoszonas` VALUES('C8', 40.19588, -8.42943);
INSERT INTO `pontoszonas` VALUES('C8', 40.19588, -8.43811);
INSERT INTO `pontoszonas` VALUES('B1', 40.2188, -8.44679);
INSERT INTO `pontoszonas` VALUES('B1', 40.2188, -8.43811);
INSERT INTO `pontoszonas` VALUES('B1', 40.22262, -8.43811);
INSERT INTO `pontoszonas` VALUES('B1', 40.22262, -8.44679);
INSERT INTO `pontoszonas` VALUES('B2', 40.21498, -8.44679);
INSERT INTO `pontoszonas` VALUES('B2', 40.21498, -8.43811);
INSERT INTO `pontoszonas` VALUES('B2', 40.2188, -8.43811);
INSERT INTO `pontoszonas` VALUES('B2', 40.2188, -8.44679);
INSERT INTO `pontoszonas` VALUES('B3', 40.21116, -8.44679);
INSERT INTO `pontoszonas` VALUES('B3', 40.21116, -8.43811);
INSERT INTO `pontoszonas` VALUES('B3', 40.21498, -8.43811);
INSERT INTO `pontoszonas` VALUES('B3', 40.21498, -8.44679);
INSERT INTO `pontoszonas` VALUES('B4', 40.20734, -8.44679);
INSERT INTO `pontoszonas` VALUES('B4', 40.20734, -8.43811);
INSERT INTO `pontoszonas` VALUES('B4', 40.21116, -8.43811);
INSERT INTO `pontoszonas` VALUES('B4', 40.21116, -8.44679);
INSERT INTO `pontoszonas` VALUES('B5', 40.20352, -8.44679);
INSERT INTO `pontoszonas` VALUES('B5', 40.20352, -8.43811);
INSERT INTO `pontoszonas` VALUES('B5', 40.20734, -8.43811);
INSERT INTO `pontoszonas` VALUES('B5', 40.20734, -8.44679);
INSERT INTO `pontoszonas` VALUES('B6', 40.1997, -8.44679);
INSERT INTO `pontoszonas` VALUES('B6', 40.1997, -8.43811);
INSERT INTO `pontoszonas` VALUES('B6', 40.20352, -8.43811);
INSERT INTO `pontoszonas` VALUES('B6', 40.20352, -8.44679);
INSERT INTO `pontoszonas` VALUES('B7', 40.19588, -8.44679);
INSERT INTO `pontoszonas` VALUES('B7', 40.19588, -8.43811);
INSERT INTO `pontoszonas` VALUES('B7', 40.1997, -8.43811);
INSERT INTO `pontoszonas` VALUES('B7', 40.1997, -8.44679);
INSERT INTO `pontoszonas` VALUES('B8', 40.19206, -8.44679);
INSERT INTO `pontoszonas` VALUES('B8', 40.19206, -8.43811);
INSERT INTO `pontoszonas` VALUES('B8', 40.19588, -8.43811);
INSERT INTO `pontoszonas` VALUES('B8', 40.19588, -8.44679);
INSERT INTO `pontoszonas` VALUES('A1', 40.2188, -8.45547);
INSERT INTO `pontoszonas` VALUES('A1', 40.2188, -8.44679);
INSERT INTO `pontoszonas` VALUES('A1', 40.22262, -8.44679);
INSERT INTO `pontoszonas` VALUES('A1', 40.22262, -8.45547);
INSERT INTO `pontoszonas` VALUES('A2', 40.21498, -8.45547);
INSERT INTO `pontoszonas` VALUES('A2', 40.21498, -8.44679);
INSERT INTO `pontoszonas` VALUES('A2', 40.2188, -8.44679);
INSERT INTO `pontoszonas` VALUES('A2', 40.2188, -8.45547);
INSERT INTO `pontoszonas` VALUES('A3', 40.21116, -8.45547);
INSERT INTO `pontoszonas` VALUES('A3', 40.21116, -8.44679);
INSERT INTO `pontoszonas` VALUES('A3', 40.21498, -8.44679);
INSERT INTO `pontoszonas` VALUES('A3', 40.21498, -8.45547);
INSERT INTO `pontoszonas` VALUES('A4', 40.20734, -8.45547);
INSERT INTO `pontoszonas` VALUES('A4', 40.20734, -8.44679);
INSERT INTO `pontoszonas` VALUES('A4', 40.21116, -8.44679);
INSERT INTO `pontoszonas` VALUES('A4', 40.21116, -8.45547);
INSERT INTO `pontoszonas` VALUES('A5', 40.20352, -8.45547);
INSERT INTO `pontoszonas` VALUES('A5', 40.20352, -8.44679);
INSERT INTO `pontoszonas` VALUES('A5', 40.20734, -8.44679);
INSERT INTO `pontoszonas` VALUES('A5', 40.20734, -8.45547);
INSERT INTO `pontoszonas` VALUES('A6', 40.1997, -8.45547);
INSERT INTO `pontoszonas` VALUES('A6', 40.1997, -8.44679);
INSERT INTO `pontoszonas` VALUES('A6', 40.20352, -8.44679);
INSERT INTO `pontoszonas` VALUES('A6', 40.20352, -8.45547);
INSERT INTO `pontoszonas` VALUES('A7', 40.19588, -8.45547);
INSERT INTO `pontoszonas` VALUES('A7', 40.19588, -8.44679);
INSERT INTO `pontoszonas` VALUES('A7', 40.1997, -8.44679);
INSERT INTO `pontoszonas` VALUES('A7', 40.1997, -8.45547);
INSERT INTO `pontoszonas` VALUES('A8', 40.19206, -8.45547);
INSERT INTO `pontoszonas` VALUES('A8', 40.19206, -8.44679);
INSERT INTO `pontoszonas` VALUES('A8', 40.19588, -8.44679);
INSERT INTO `pontoszonas` VALUES('A8', 40.19588, -8.45547);
INSERT INTO `pontoszonas` VALUES('E1', 40.2188, -8.42075);
INSERT INTO `pontoszonas` VALUES('E1', 40.2188, -8.41207);
INSERT INTO `pontoszonas` VALUES('E1', 40.22262, -8.41207);
INSERT INTO `pontoszonas` VALUES('E1', 40.22262, -8.42075);
INSERT INTO `pontoszonas` VALUES('E2', 40.21498, -8.42075);
INSERT INTO `pontoszonas` VALUES('E2', 40.21498, -8.41207);
INSERT INTO `pontoszonas` VALUES('E2', 40.2188, -8.41207);
INSERT INTO `pontoszonas` VALUES('E2', 40.2188, -8.42075);
INSERT INTO `pontoszonas` VALUES('E3', 40.21116, -8.42075);
INSERT INTO `pontoszonas` VALUES('E3', 40.21116, -8.41207);
INSERT INTO `pontoszonas` VALUES('E3', 40.21498, -8.41207);
INSERT INTO `pontoszonas` VALUES('E3', 40.21498, -8.42075);
INSERT INTO `pontoszonas` VALUES('E4', 40.20734, -8.42075);
INSERT INTO `pontoszonas` VALUES('E4', 40.20734, -8.41207);
INSERT INTO `pontoszonas` VALUES('E4', 40.21116, -8.41207);
INSERT INTO `pontoszonas` VALUES('E4', 40.21116, -8.42075);
INSERT INTO `pontoszonas` VALUES('E5', 40.20352, -8.42075);
INSERT INTO `pontoszonas` VALUES('E5', 40.20352, -8.41207);
INSERT INTO `pontoszonas` VALUES('E5', 40.20734, -8.41207);
INSERT INTO `pontoszonas` VALUES('E5', 40.20734, -8.42075);
INSERT INTO `pontoszonas` VALUES('E6', 40.1997, -8.42075);
INSERT INTO `pontoszonas` VALUES('E6', 40.1997, -8.41207);
INSERT INTO `pontoszonas` VALUES('E6', 40.20352, -8.41207);
INSERT INTO `pontoszonas` VALUES('E6', 40.20352, -8.42075);
INSERT INTO `pontoszonas` VALUES('E7', 40.19588, -8.42075);
INSERT INTO `pontoszonas` VALUES('E7', 40.19588, -8.41207);
INSERT INTO `pontoszonas` VALUES('E7', 40.1997, -8.41207);
INSERT INTO `pontoszonas` VALUES('E7', 40.1997, -8.42075);
INSERT INTO `pontoszonas` VALUES('E8', 40.19206, -8.42075);
INSERT INTO `pontoszonas` VALUES('E8', 40.19206, -8.41207);
INSERT INTO `pontoszonas` VALUES('E8', 40.19588, -8.41207);
INSERT INTO `pontoszonas` VALUES('E8', 40.19588, -8.42075);
INSERT INTO `pontoszonas` VALUES('F1', 40.2188, -8.41207);
INSERT INTO `pontoszonas` VALUES('F1', 40.2188, -8.40339);
INSERT INTO `pontoszonas` VALUES('F1', 40.22262, -8.40339);
INSERT INTO `pontoszonas` VALUES('F1', 40.22262, -8.41207);
INSERT INTO `pontoszonas` VALUES('F2', 40.21498, -8.41207);
INSERT INTO `pontoszonas` VALUES('F2', 40.21498, -8.40339);
INSERT INTO `pontoszonas` VALUES('F2', 40.2188, -8.40339);
INSERT INTO `pontoszonas` VALUES('F2', 40.2188, -8.41207);
INSERT INTO `pontoszonas` VALUES('F3', 40.21116, -8.41207);
INSERT INTO `pontoszonas` VALUES('F3', 40.21116, -8.40339);
INSERT INTO `pontoszonas` VALUES('F3', 40.21498, -8.40339);
INSERT INTO `pontoszonas` VALUES('F3', 40.21498, -8.41207);
INSERT INTO `pontoszonas` VALUES('F4', 40.20734, -8.41207);
INSERT INTO `pontoszonas` VALUES('F4', 40.20734, -8.40339);
INSERT INTO `pontoszonas` VALUES('F4', 40.21116, -8.40339);
INSERT INTO `pontoszonas` VALUES('F4', 40.21116, -8.41207);
INSERT INTO `pontoszonas` VALUES('F5', 40.20352, -8.41207);
INSERT INTO `pontoszonas` VALUES('F5', 40.20352, -8.40339);
INSERT INTO `pontoszonas` VALUES('F5', 40.20734, -8.40339);
INSERT INTO `pontoszonas` VALUES('F5', 40.20734, -8.41207);
INSERT INTO `pontoszonas` VALUES('F6', 40.1997, -8.41207);
INSERT INTO `pontoszonas` VALUES('F6', 40.1997, -8.40339);
INSERT INTO `pontoszonas` VALUES('F6', 40.20352, -8.40339);
INSERT INTO `pontoszonas` VALUES('F6', 40.20352, -8.41207);
INSERT INTO `pontoszonas` VALUES('F7', 40.19588, -8.41207);
INSERT INTO `pontoszonas` VALUES('F7', 40.19588, -8.40339);
INSERT INTO `pontoszonas` VALUES('F7', 40.1997, -8.40339);
INSERT INTO `pontoszonas` VALUES('F7', 40.1997, -8.41207);
INSERT INTO `pontoszonas` VALUES('F8', 40.19206, -8.41207);
INSERT INTO `pontoszonas` VALUES('F8', 40.19206, -8.40339);
INSERT INTO `pontoszonas` VALUES('F8', 40.19588, -8.40339);
INSERT INTO `pontoszonas` VALUES('F8', 40.19588, -8.41207);
INSERT INTO `pontoszonas` VALUES('G1', 40.2188, -8.40339);
INSERT INTO `pontoszonas` VALUES('G1', 40.2188, -8.39471);
INSERT INTO `pontoszonas` VALUES('G1', 40.22262, -8.39471);
INSERT INTO `pontoszonas` VALUES('G1', 40.22262, -8.40339);
INSERT INTO `pontoszonas` VALUES('G3', 40.21116, -8.40339);
INSERT INTO `pontoszonas` VALUES('G3', 40.21116, -8.39471);
INSERT INTO `pontoszonas` VALUES('G3', 40.21498, -8.39471);
INSERT INTO `pontoszonas` VALUES('G3', 40.21498, -8.40339);
INSERT INTO `pontoszonas` VALUES('G2', 40.21498, -8.40339);
INSERT INTO `pontoszonas` VALUES('G2', 40.21498, -8.39471);
INSERT INTO `pontoszonas` VALUES('G2', 40.2188, -8.39471);
INSERT INTO `pontoszonas` VALUES('G2', 40.2188, -8.40339);
INSERT INTO `pontoszonas` VALUES('G4', 40.20734, -8.40339);
INSERT INTO `pontoszonas` VALUES('G4', 40.20734, -8.39471);
INSERT INTO `pontoszonas` VALUES('G4', 40.21116, -8.39471);
INSERT INTO `pontoszonas` VALUES('G4', 40.21116, -8.40339);
INSERT INTO `pontoszonas` VALUES('G5', 40.20352, -8.40339);
INSERT INTO `pontoszonas` VALUES('G5', 40.20352, -8.39471);
INSERT INTO `pontoszonas` VALUES('G5', 40.20734, -8.39471);
INSERT INTO `pontoszonas` VALUES('G5', 40.20734, -8.40339);
INSERT INTO `pontoszonas` VALUES('G6', 40.1997, -8.40339);
INSERT INTO `pontoszonas` VALUES('G6', 40.1997, -8.39471);
INSERT INTO `pontoszonas` VALUES('G6', 40.20352, -8.39471);
INSERT INTO `pontoszonas` VALUES('G6', 40.20352, -8.40339);
INSERT INTO `pontoszonas` VALUES('G7', 40.19588, -8.40339);
INSERT INTO `pontoszonas` VALUES('G7', 40.19588, -8.39471);
INSERT INTO `pontoszonas` VALUES('G7', 40.1997, -8.39471);
INSERT INTO `pontoszonas` VALUES('G7', 40.1997, -8.40339);
INSERT INTO `pontoszonas` VALUES('G8', 40.19206, -8.40339);
INSERT INTO `pontoszonas` VALUES('G8', 40.19206, -8.39471);
INSERT INTO `pontoszonas` VALUES('G8', 40.19588, -8.39471);
INSERT INTO `pontoszonas` VALUES('G8', 40.19588, -8.40339);
INSERT INTO `pontoszonas` VALUES('H1', 40.2188, -8.39471);
INSERT INTO `pontoszonas` VALUES('H1', 40.2188, -8.38603);
INSERT INTO `pontoszonas` VALUES('H1', 40.22262, -8.38603);
INSERT INTO `pontoszonas` VALUES('H1', 40.22262, -8.39471);
INSERT INTO `pontoszonas` VALUES('H2', 40.21498, -8.39471);
INSERT INTO `pontoszonas` VALUES('H2', 40.21498, -8.38603);
INSERT INTO `pontoszonas` VALUES('H2', 40.2188, -8.38603);
INSERT INTO `pontoszonas` VALUES('H2', 40.2188, -8.39471);
INSERT INTO `pontoszonas` VALUES('H3', 40.21116, -8.39471);
INSERT INTO `pontoszonas` VALUES('H3', 40.21116, -8.38603);
INSERT INTO `pontoszonas` VALUES('H3', 40.21498, -8.38603);
INSERT INTO `pontoszonas` VALUES('H3', 40.21498, -8.39471);
INSERT INTO `pontoszonas` VALUES('H4', 40.20734, -8.39471);
INSERT INTO `pontoszonas` VALUES('H4', 40.20734, -8.38603);
INSERT INTO `pontoszonas` VALUES('H4', 40.21116, -8.38603);
INSERT INTO `pontoszonas` VALUES('H4', 40.21116, -8.39471);
INSERT INTO `pontoszonas` VALUES('H5', 40.20352, -8.39471);
INSERT INTO `pontoszonas` VALUES('H5', 40.20352, -8.38603);
INSERT INTO `pontoszonas` VALUES('H5', 40.20734, -8.38603);
INSERT INTO `pontoszonas` VALUES('H5', 40.20734, -8.39471);
INSERT INTO `pontoszonas` VALUES('H6', 40.1997, -8.39471);
INSERT INTO `pontoszonas` VALUES('H6', 40.1997, -8.38603);
INSERT INTO `pontoszonas` VALUES('H6', 40.20352, -8.38603);
INSERT INTO `pontoszonas` VALUES('H6', 40.20352, -8.39471);
INSERT INTO `pontoszonas` VALUES('H7', 40.19588, -8.39471);
INSERT INTO `pontoszonas` VALUES('H7', 40.19588, -8.38603);
INSERT INTO `pontoszonas` VALUES('H7', 40.1997, -8.38603);
INSERT INTO `pontoszonas` VALUES('H7', 40.1997, -8.39471);
INSERT INTO `pontoszonas` VALUES('H8', 40.19206, -8.39471);
INSERT INTO `pontoszonas` VALUES('H8', 40.19206, -8.38603);
INSERT INTO `pontoszonas` VALUES('H8', 40.19588, -8.38603);
INSERT INTO `pontoszonas` VALUES('H8', 40.19588, -8.39471);

-- --------------------------------------------------------

--
-- Table structure for table `zonas`
--

DROP TABLE IF EXISTS `zonas`;
CREATE TABLE IF NOT EXISTS `zonas` (
  `Nome` varchar(4) NOT NULL,
  `Cor` varchar(8) NOT NULL,
  PRIMARY KEY (`Nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zonas`
--

INSERT INTO `zonas` VALUES('A1', '00FF00');
INSERT INTO `zonas` VALUES('A2', '00FF00');
INSERT INTO `zonas` VALUES('A3', '00FF00');
INSERT INTO `zonas` VALUES('A4', '00FF00');
INSERT INTO `zonas` VALUES('A5', '00FF00');
INSERT INTO `zonas` VALUES('A6', '00FF00');
INSERT INTO `zonas` VALUES('A7', '00FF00');
INSERT INTO `zonas` VALUES('A8', '00FF00');
INSERT INTO `zonas` VALUES('B1', '00FF00');
INSERT INTO `zonas` VALUES('B2', '00FF00');
INSERT INTO `zonas` VALUES('B3', '00FF00');
INSERT INTO `zonas` VALUES('B4', '00FF00');
INSERT INTO `zonas` VALUES('B5', '00FF00');
INSERT INTO `zonas` VALUES('B6', '00FF00');
INSERT INTO `zonas` VALUES('B7', '00FF00');
INSERT INTO `zonas` VALUES('B8', '00FF00');
INSERT INTO `zonas` VALUES('C1', '00FF00');
INSERT INTO `zonas` VALUES('C2', '00FF00');
INSERT INTO `zonas` VALUES('C3', '00FF00');
INSERT INTO `zonas` VALUES('C4', '00FF00');
INSERT INTO `zonas` VALUES('C5', '00FF00');
INSERT INTO `zonas` VALUES('C6', '00FF00');
INSERT INTO `zonas` VALUES('C7', '00FF00');
INSERT INTO `zonas` VALUES('C8', '00FF00');
INSERT INTO `zonas` VALUES('D1', '00FF00');
INSERT INTO `zonas` VALUES('D2', '00FF00');
INSERT INTO `zonas` VALUES('D3', '00FF00');
INSERT INTO `zonas` VALUES('D4', '00FF00');
INSERT INTO `zonas` VALUES('D5', '00FF00');
INSERT INTO `zonas` VALUES('D6', '00FF00');
INSERT INTO `zonas` VALUES('D7', '00FF00');
INSERT INTO `zonas` VALUES('D8', '00FF00');
INSERT INTO `zonas` VALUES('E1', '00FF00');
INSERT INTO `zonas` VALUES('E2', '00FF00');
INSERT INTO `zonas` VALUES('E3', '00FF00');
INSERT INTO `zonas` VALUES('E4', '00FF00');
INSERT INTO `zonas` VALUES('E5', '00FF00');
INSERT INTO `zonas` VALUES('E6', '00FF00');
INSERT INTO `zonas` VALUES('E7', '00FF00');
INSERT INTO `zonas` VALUES('E8', '00FF00');
INSERT INTO `zonas` VALUES('F1', '00FF00');
INSERT INTO `zonas` VALUES('F2', '00FF00');
INSERT INTO `zonas` VALUES('F3', '00FF00');
INSERT INTO `zonas` VALUES('F4', '00FF00');
INSERT INTO `zonas` VALUES('F5', '00FF00');
INSERT INTO `zonas` VALUES('F6', '00FF00');
INSERT INTO `zonas` VALUES('F7', '00FF00');
INSERT INTO `zonas` VALUES('F8', '00FF00');
INSERT INTO `zonas` VALUES('G1', '00FF00');
INSERT INTO `zonas` VALUES('G2', '00FF00');
INSERT INTO `zonas` VALUES('G3', '00FF00');
INSERT INTO `zonas` VALUES('G4', '00FF00');
INSERT INTO `zonas` VALUES('G5', '00FF00');
INSERT INTO `zonas` VALUES('G6', '00FF00');
INSERT INTO `zonas` VALUES('G7', '00FF00');
INSERT INTO `zonas` VALUES('G8', '00FF00');
INSERT INTO `zonas` VALUES('H1', '00FF00');
INSERT INTO `zonas` VALUES('H2', '00FF00');
INSERT INTO `zonas` VALUES('H3', '00FF00');
INSERT INTO `zonas` VALUES('H4', '00FF00');
INSERT INTO `zonas` VALUES('H5', '00FF00');
INSERT INTO `zonas` VALUES('H6', '00FF00');
INSERT INTO `zonas` VALUES('H7', '00FF00');
INSERT INTO `zonas` VALUES('H8', '00FF00');

-- --------------------------------------------------------

--
-- Structure for view `entradas`
--
DROP TABLE IF EXISTS `entradas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `entradas` AS select `o`.`ID` AS `ID`,`o`.`Visivel` AS `Visivel`,`o`.`Certificacao` AS `Certificacao`,`o`.`Senhorio` AS `Senhorio`,`o`.`Lavagem_roupa` AS `Lavagem_roupa`,`o`.`Mobilado` AS `Mobilado`,`o`.`Animais` AS `Animais`,`o`.`Visitas` AS `Visitas`,`o`.`Agua` AS `Agua`,`o`.`Luz` AS `Luz`,`o`.`Gas` AS `Gas`,`o`.`Internet` AS `Internet`,`o`.`Outras_despesas` AS `Outras_despesas`,`o`.`Morada` AS `Morada`,`o`.`Zona` AS `Zona`,`o`.`Proprietario` AS `Proprietario`,`o`.`Contacto` AS `Contacto`,`o`.`Email` AS `Email`,`o`.`Inscricao_ano` AS `Inscricao_ano`,`o`.`Numero_pessoas` AS `Numero_pessoas`,`o`.`Min_meses` AS `Min_meses`,`o`.`Sexo` AS `Sexo`,`o`.`Cozinha` AS `Cozinha`,`o`.`Casa_de_banho` AS `Casa_de_banho`,`o`.`Dimensoes` AS `Dimensoes`,`o`.`Estado_casa` AS `Estado_casa`,`o`.`Avaliador` AS `Avaliador`,`o`.`Tipo` AS `Tipo`,`o`.`Visita` AS `Visita`,`o`.`Pagamento` AS `Pagamento`,round(((((((`o`.`Cozinha` + `o`.`Casa_de_banho`) + `o`.`Dimensoes`) + `o`.`Estado_casa`) + (select avg(`aluguers`.`Qualidade`) from `aluguers` where (`aluguers`.`Ordem` = `o`.`ID`))) + 0.5) / 5),0) AS `Qualidade`,(select min(`aluguers`.`Preco`) from `aluguers` where (`aluguers`.`Ordem` = `o`.`ID`)) AS `MinPreco`,(select max(`aluguers`.`Preco`) from `aluguers` where (`aluguers`.`Ordem` = `o`.`ID`)) AS `MaxPreco` from `ordens` `o`;
