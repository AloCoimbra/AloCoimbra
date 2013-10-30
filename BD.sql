-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 30-Out-2013 às 15:20
-- Versão do servidor: 5.6.12-log
-- versão do PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `alocoimbra`
--
CREATE DATABASE IF NOT EXISTS `alocoimbra` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `alocoimbra`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguer`
--

CREATE TABLE IF NOT EXISTS `aluguer` (
  `Alojamento` varchar(32) NOT NULL,
  `Qualidade` set('excelente','muito bom','bom','razoavel') NOT NULL,
  `Preco_mes` int(11) NOT NULL,
  `Preco_semana` int(11) NOT NULL,
  `Preco_dia` int(11) NOT NULL,
  `Ordem` int(11) NOT NULL,
  KEY `Ordem` (`Ordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE IF NOT EXISTS `imagens` (
  `ID` int(11) NOT NULL,
  `Ordem` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Ordem` (`Ordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `locais`
--

CREATE TABLE IF NOT EXISTS `locais` (
  `Nome` varchar(64) NOT NULL,
  `Descricao` varchar(256) NOT NULL,
  `Longitude` double NOT NULL,
  `Latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem`
--

CREATE TABLE IF NOT EXISTS `ordem` (
  `ID` int(11) NOT NULL,
  `Visivel` tinyint(1) NOT NULL,
  `Certificacao` tinyint(1) NOT NULL,
  `Senhorio` tinyint(1) NOT NULL,
  `Lavagem_roupa` tinyint(1) NOT NULL,
  `Mobilado` tinyint(1) NOT NULL,
  `Animais` tinyint(1) NOT NULL,
  `Visitas` tinyint(1) NOT NULL,
  `Morada` varchar(256) NOT NULL,
  `Zona` varchar(4) NOT NULL,
  `Proprietario` varchar(64) NOT NULL,
  `Contacto` bigint(30) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Inscricao_ano` year(4) NOT NULL,
  `Numero_pessoas` int(11) NOT NULL,
  `Min_meses` int(11) NOT NULL,
  `Sexo` set('masculino','feminino') NOT NULL,
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
-- Extraindo dados da tabela `ordem`
--

INSERT INTO `ordem` (`ID`, `Visivel`, `Certificacao`, `Senhorio`, `Lavagem_roupa`, `Mobilado`, `Animais`, `Visitas`, `Morada`, `Zona`, `Proprietario`, `Contacto`, `Email`, `Inscricao_ano`, `Numero_pessoas`, `Min_meses`, `Sexo`, `Cozinha`, `Casa_de_banho`, `Dimensoes`, `Estado_casa`, `Tipo`, `Visita`, `Pagamento`) VALUES
(0, 1, 1, 0, 0, 0, 0, 1, 'Rua do Caralho, 123', 'A1', 'Filho de uma Pega', 947852468, 'porra_para_isto@fuckit.com', 2013, 1, 12, 'masculino', 'bom', 'muito bom', 'muito bom', 'muito bom', 'quarto', '2013-07-10', '2013-08-06'),
(1, 1, 1, 1, 1, 1, 1, 1, 'Rua da merda', '69', 'Pila man', 999999999, 'merda@gah.com', 2011, 5, 6, 'feminino', 'razoavel', 'razoavel', 'razoavel', 'razoavel', 'apartamento', '2013-10-01', '2013-10-01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `zonas`
--

CREATE TABLE IF NOT EXISTS `zonas` (
  `Nome` varchar(4) NOT NULL,
  `Longitude` double NOT NULL,
  `Latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluguer`
--
ALTER TABLE `aluguer`
  ADD CONSTRAINT `aluguer_ibfk_1` FOREIGN KEY (`Ordem`) REFERENCES `ordem` (`ID`);

--
-- Limitadores para a tabela `imagens`
--
ALTER TABLE `imagens`
  ADD CONSTRAINT `imagens_ibfk_1` FOREIGN KEY (`Ordem`) REFERENCES `ordem` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
