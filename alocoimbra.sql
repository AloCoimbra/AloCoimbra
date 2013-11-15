-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 15-Nov-2013 às 17:00
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
-- Estrutura da tabela `aluguers`
--

CREATE TABLE IF NOT EXISTS `aluguers` (
  `ID` int(11) NOT NULL,
  `Alojamento` varchar(32) NOT NULL,
  `Qualidade` set('excelente','muito bom','bom','razoavel') NOT NULL,
  `Preco_mes` int(11) NOT NULL,
  `Ordem` int(11) NOT NULL,
  KEY `Ordem` (`Ordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluguers`
--

INSERT INTO `aluguers` (`ID`, `Alojamento`, `Qualidade`, `Preco_mes`, `Ordem`) VALUES
(1, 'Individual', 'muito bom', 140, 1),
(2, 'Duplo', 'muito bom', 100, 2),
(3, 'Individual', 'bom', 155, 3);

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
  `Descricao` mediumtext NOT NULL,
  `Longitude` double NOT NULL,
  `Latitude` double NOT NULL,
  UNIQUE KEY `Nome` (`Nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `locais`
--

INSERT INTO `locais` (`Nome`, `Descricao`, `Longitude`, `Latitude`) VALUES
('Pólo 1', '<p>O local central da universidade. Aqui ficam localizados vários serviços e departamentos, com:</p><ul><li>Direito<li>Letras<li>Medicina<li>Matemática<li>Física<li>Química<li>Antropologia<li>Arquitectura<li>Botânica<li>Zoologia<li>Psicologia</ul>', -8.424282, 40.208089),
('Pólo 2', '<p>Aqui fica localizada a Faculdade de Ciências e Tecnologias, bem como os restantes departamentos constituintes desta faculdade:</p><ul><li>Engenharia Civil<li>Engenharia Electrotécnica e Computadores<li>Engenharia Informática<li>Engenharia Mecânica<li>Engenharia Química</ul>', -8.415634, 40.186288),
('Pólo 3', '<p>Perto dos Hospitais da Universidade de Coimbra, neste pólo estão localizados alguns departamentos, como Farmácia e Medicina.</p>', -8.461056, 40.197981);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordens`
--

CREATE TABLE IF NOT EXISTS `ordens` (
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
-- Extraindo dados da tabela `ordens`
--

INSERT INTO `ordens` (`ID`, `Visivel`, `Certificacao`, `Senhorio`, `Lavagem_roupa`, `Mobilado`, `Animais`, `Visitas`, `Agua`, `Luz`, `Gas`, `Internet`, `Outras_despesas`, `Morada`, `Zona`, `Proprietario`, `Contacto`, `Email`, `Inscricao_ano`, `Numero_pessoas`, `Min_meses`, `Sexo`, `Cozinha`, `Casa_de_banho`, `Dimensoes`, `Estado_casa`, `Tipo`, `Visita`, `Pagamento`) VALUES
(1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 'Rua António José de Almeida, 65 - R/c', 'D3', 'Adilia dos Santos Sousa', '239828611;963535340', '', 2011, 4, 12, 'feminino', 'muito bom', 'muito bom', 'muito bom', 'muito bom', 'quarto', '2013-11-01', '2013-11-01'),
(2, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 'TV cabo', 'Rua da saragoça, nº2', 'D3', 'Ana Luisa Martins Leite', '966124420', '', 2010, 2, 12, 'ambos', 'muito bom', 'muito bom', 'muito bom', 'muito bom', 'quarto', '2013-11-02', '2013-11-02'),
(3, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', 'Rua Padre António Vieira, 16, nº1', 'D4', 'António Manuel Fonseca Oliveira Neto', '967766049', '', 2012, 10, 6, 'ambos', 'bom', 'muito bom', 'bom', 'muito bom', 'quarto', '2013-11-14', '2013-11-14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pontoszonas`
--

CREATE TABLE IF NOT EXISTS `pontoszonas` (
  `Nome` varchar(4) NOT NULL,
  `Latitude` double NOT NULL,
  `Longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pontoszonas`
--

INSERT INTO `pontoszonas` (`Nome`, `Latitude`, `Longitude`) VALUES
('D4', 40.20734, -8.42943),
('D4', 40.20734, -8.42075),
('D4', 40.21116, -8.42075),
('D4', 40.21116, -8.42943),
('D3', 40.21116, -8.42943),
('D3', 40.21116, -8.42075),
('D3', 40.21498, -8.42075),
('D3', 40.21498, -8.42943);

-- --------------------------------------------------------

--
-- Estrutura da tabela `zonas`
--

CREATE TABLE IF NOT EXISTS `zonas` (
  `Nome` varchar(4) NOT NULL,
  `Cor` varchar(8) NOT NULL,
  PRIMARY KEY (`Nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `zonas`
--

INSERT INTO `zonas` (`Nome`, `Cor`) VALUES
('D3', '00FF00'),
('D4', '00FF00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
