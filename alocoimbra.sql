-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2013 at 05:25 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alocoimbra`
--

-- --------------------------------------------------------

--
-- Table structure for table `aluguer`
--

DROP TABLE IF EXISTS `aluguer`;
CREATE TABLE IF NOT EXISTS `aluguer` (
  `Alojamento` varchar(32) NOT NULL,
  `Qualidade` set('excelente','muito bom','bom','razoavel') NOT NULL,
  `Preco_mes` int(11) NOT NULL,
  `Preco_semana` int(11) NOT NULL,
  `Preco_dia` int(11) NOT NULL,
  `Ordem` int(11) NOT NULL,
  KEY `Ordem` (`Ordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aluguer`
--


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
-- Table structure for table `ordem`
--

DROP TABLE IF EXISTS `ordem`;
CREATE TABLE IF NOT EXISTS `ordem` (
  `ID` int(11) NOT NULL,
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
  `Numero_pessoas` int(11) NOT NULL,
  `Min_meses` int(11) NOT NULL,
  `Sexo` set('masculino','feminino','ambos') NOT NULL,
  `Cozinha` set('excelente','muito bom','bom','razoavel') NOT NULL,
  `Casa_de_banho` set('excelente','muito bom','bom','razoavel') NOT NULL,
  `Dimensoes` set('excelente','muito bom','bom','razoavel') NOT NULL,
  `Estado_casa` set('excelente','muito bom','bom','razoavel') NOT NULL,
  `Tipo` set('apartamento','quarto','residencia','republica') NOT NULL,
  `Visita` date NOT NULL,
  `Pagamento` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordem`
--

INSERT INTO `ordem` VALUES(0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', 'Rua do Caralho, 123', 'A1', 'Filho de uma Pega', '947852468', 'porra_para_isto@fuckit.com', 2013, 1, 12, 'masculino', 'bom', 'muito bom', 'muito bom', 'muito bom', 'quarto', '2013-07-10', '2013-08-06');
INSERT INTO `ordem` VALUES(1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, '', 'Rua da merda', '69', 'Pila man', '999999999', 'merda@gah.com', 2011, 5, 6, 'feminino', 'razoavel', 'razoavel', 'razoavel', 'razoavel', 'apartamento', '2013-10-01', '2013-10-01');

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

INSERT INTO `zonas` VALUES('D3', '00FF00');
INSERT INTO `zonas` VALUES('D4', '00FF00');
