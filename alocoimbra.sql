-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 23-Nov-2013 às 18:41
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
  `Alojamento` set('Individual','Duplo') NOT NULL,
  `Qualidade` set('excelente','muito bom','bom','razoavel') NOT NULL,
  `Preco_mes` int(11) NOT NULL,
  `Ordem` int(11) NOT NULL,
  KEY `Ordem` (`Ordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluguers`
--

INSERT INTO `aluguers` (`ID`, `Alojamento`, `Qualidade`, `Preco_mes`, `Ordem`) VALUES
(1, 'Individual', 'muito bom', 210, 1),
(2, 'Individual', 'muito bom', 180, 1),
(3, 'Individual', 'muito bom', 140, 2),
(4, 'Individual', 'razoavel', 170, 3),
(5, 'Individual', 'bom', 150, 4),
(6, 'Individual', 'razoavel', 220, 5),
(7, 'Individual', 'bom', 220, 6),
(8, 'Individual', 'muito bom', 155, 7),
(9, 'Individual', 'muito bom', 160, 7),
(10, 'Individual', 'muito bom', 200, 8),
(11, 'Individual', 'muito bom', 150, 9),
(12, 'Individual', 'bom', 250, 10),
(13, 'Individual', 'razoavel', 210, 11),
(14, 'Individual', 'muito bom', 200, 12),
(15, 'Individual', 'muito bom', 220, 12),
(16, 'Duplo', 'razoavel', 100, 13),
(17, 'Individual', 'bom', 200, 14),
(18, 'Individual', 'razoavel', 130, 15),
(19, 'Individual', 'razoavel', 140, 15),
(20, 'Individual', 'muito bom', 160, 16),
(21, 'Individual', 'muito bom', 160, 17),
(22, 'Individual', 'bom', 190, 18),
(23, 'Individual', 'razoavel', 140, 19),
(24, 'Individual', 'bom', 180, 20);

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
  `Cozinha` set('excelente','muito bom','bom','razoavel','') NOT NULL,
  `Casa_de_banho` set('excelente','muito bom','bom','razoavel','') NOT NULL,
  `Dimensoes` set('excelente','muito bom','bom','razoavel','') NOT NULL,
  `Estado_casa` set('excelente','muito bom','bom','razoavel','') NOT NULL,
  `Avaliador` varchar(64) NOT NULL,
  `Tipo` set('apartamento','quarto','residencia','republica') NOT NULL,
  `Visita` date NOT NULL,
  `Pagamento` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ordens`
--

INSERT INTO `ordens` (`ID`, `Visivel`, `Certificacao`, `Senhorio`, `Lavagem_roupa`, `Mobilado`, `Animais`, `Visitas`, `Agua`, `Luz`, `Gas`, `Internet`, `Outras_despesas`, `Morada`, `Zona`, `Proprietario`, `Contacto`, `Email`, `Inscricao_ano`, `Numero_pessoas`, `Min_meses`, `Sexo`, `Cozinha`, `Casa_de_banho`, `Dimensoes`, `Estado_casa`, `Avaliador`, `Tipo`, `Visita`, `Pagamento`) VALUES
(1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 'Limpeza', 'Rua do Loureiro, 17', 'D4', 'Fátima Esteves', '239 829 438;964 396 582', '', 2000, 16, 12, 'masculino', '', '', '', '', '', 'quarto', '2013-08-29', '2013-08-29'),
(2, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, '', 'Rua António José de Almeida, 65 - R/C ', 'D3', 'Adília dos Santos Sousa', '239 828 611;963 535 340', '', 2000, 4, 12, 'feminino', '', '', '', '', '', 'quarto', '2013-08-03', '2013-08-30'),
(3, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Limpeza', 'Avenida Sá da Bandeira, 110 - 1º', 'D4', 'Maria Luísa Baptista Mendes Gouveia', '239 717 303; 91 484 50 50', '', 2000, 4, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-09-07', '2013-09-17'),
(4, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 'Limpeza', 'Rua do Brasil, 302 - 6º dtº (Calhabé)', 'E6', 'Maria da Glória Bernardo', '239 492 085; 911 990 548', '', 2000, 3, 12, 'masculino', '', '', '', '', '', 'quarto', '2013-08-22', '2013-08-22'),
(5, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 'Limpeza', 'Rua Venâncio Rodrigues, nº 11 F (Praça da República) ', 'D4', 'Maria José Varandas Martins Silva', '968 203 553; 968 257 816; 917 508 813', 'mjmrst@gmail.com', 2000, 7, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-09-03', '2013-08-03'),
(6, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 'Limpeza', 'Rua Dr. António de Vasconcelos, 119 - 2º', 'D3', 'Esmeralda Maria Machado Santos Vaz', '239 828 563; 966 052 670', '', 2000, 3, 12, 'masculino', '', '', '', '', '', 'quarto', '2013-03-22', '2013-08-22'),
(7, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, '', 'Rua Dr. Augusto Rocha, 12', 'E3', 'Aida Fernanda Rodrigues', '91 915 37 44', '', 2000, 7, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-09-03', '2013-09-03'),
(8, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 'Limpeza Semanal', 'Rua Pinheiro Chagas, 17 - 1º', 'F3', 'Ana Maria Pessoa Monteiro do Vale', '93 361 80 01; 239 483 618', 'anapessoavale@hotmail.com', 2000, 5, 12, 'feminino', '', '', '', '', '', 'quarto', '2013-08-21', '2013-08-21'),
(9, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 'Limpeza', 'Rua Luís de Camões, 58 - 1º', 'F3', 'Maria do Rosário Duarte Dias', '965 007 818', 'mrosariodd@sapo.pt', 2000, 3, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-08-03', '2013-08-30'),
(10, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, '', 'Rua Adelino Veiga, 23', 'C4', 'António João Rodrigues Freitas', '919 676 121', '', 2000, 10, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-07-03', '2013-08-01'),
(11, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 'Limpeza, TV Cabo', 'Rua da Matemática, 10', 'D4', 'Albano Gomes Ventura', '239 824 351; 911 721 476', '', 2000, 14, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-09-11', '2013-09-11'),
(12, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 'Limpeza', 'Rua da Manutenção Militar, 6', 'D3', 'Lucília de Jesus José Gil', '919 350 335', '', 2000, 11, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-09-17', '2013-09-18'),
(13, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 'TV Cabo', 'Rua da Matemática, 2 - 2º', 'D4', 'Maria Lisete Soares', '239 820 929; 915 386 933', '', 2000, 10, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-06-25', '2013-06-25'),
(14, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 'Limpeza', 'Rua Padre António Vieira, 4', 'D4', 'Cassilda de Jesus Fernandes', '239 824 748; 919 879 173', '', 2000, 10, 12, 'feminino', '', '', '', '', '', 'quarto', '2013-06-18', '2013-06-18'),
(15, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Limpeza', 'Avenida Sá da Bandeira, 110 - 1º', 'D4', 'Maria Luísa Baptista Mendes Gouveia', '239 717 303; 91 484 50 50', '', 2000, 4, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-09-17', '2013-09-17'),
(16, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 'Limpeza', 'Rua Adolfo Loureiro, 57 - 3º Esqª (Solum)', 'F6', 'Maria Rita Dias de Almeida Leite', '963 016 212; 919 520 981', 'm.rita.a.leite@gmail.com', 2000, 4, 12, 'feminino', '', '', '', '', '', 'quarto', '2013-08-03', '2013-08-30'),
(17, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 'Limpeza', 'Rua Adolfo Loureiro, 118 - Cave Dtª', 'F6', 'Célia Maria Cravo Silvestre Batista', '919 868 735; 969 776 220', 'celia.batista@sapo.pt', 2000, 3, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-06-25', '2013-06-25'),
(18, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 'Limpeza', 'Rua Guerra Junqueiro, 104 - 2º', 'D3', 'Maria Cândida São José Soares', '914 268 457; 239 832 684; 967 819 632', '', 2000, 5, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-08-09', '2013-09-02'),
(19, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 'Limpeza', 'Rua Bernardo de Albuquerque, 104', 'F2', 'Maria Jerónima Soares de Albergaria Cabral', '239 482 212', 'coimbra104@gmail.com', 2000, 1, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-09-13', '2013-09-13'),
(20, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, '', 'Rua António Jardim, 101 - 1º', 'G2', 'Ruben Manuel Antunes Tavares', '239 838 023; 919 975 114', 'ruben@avscentro.min-saude.pt', 2000, 3, 12, 'ambos', '', '', '', '', '', 'quarto', '2013-07-24', '2013-07-24');

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
('D3', 40.21498, -8.42943),
('D2', 40.21498, -8.42943),
('D2', 40.21498, -8.42075),
('D2', 40.2188, -8.42075),
('D2', 40.2188, -8.42943),
('D1', 40.2188, -8.42943),
('D1', 40.2188, -8.42075),
('D1', 40.22262, -8.42075),
('D1', 40.22262, -8.42943),
('D5', 40.20352, -8.42943),
('D5', 40.20352, -8.42075),
('D5', 40.20734, -8.42075),
('D5', 40.20734, -8.42943),
('D6', 40.1997, -8.42943),
('D6', 40.1997, -8.42075),
('D6', 40.20352, -8.42075),
('D6', 40.20352, -8.42943),
('D7', 40.19588, -8.42943),
('D7', 40.19588, -8.42075),
('D7', 40.1997, -8.42075),
('D7', 40.1997, -8.42943),
('D8', 40.19206, -8.42943),
('D8', 40.19206, -8.42075),
('D8', 40.19588, -8.42075),
('D8', 40.19588, -8.42943),
('C4', 40.20734, -8.43811),
('C4', 40.20734, -8.42943),
('C4', 40.21116, -8.42943),
('C4', 40.21116, -8.43811),
('C3', 40.21116, -8.43811),
('C3', 40.21116, -8.42943),
('C3', 40.21498, -8.42943),
('C3', 40.21498, -8.43811),
('C2', 40.21498, -8.43811),
('C2', 40.21498, -8.42943),
('C2', 40.2188, -8.42943),
('C2', 40.2188, -8.43811),
('C1', 40.2188, -8.43811),
('C1', 40.2188, -8.42943),
('C1', 40.22262, -8.42943),
('C1', 40.22262, -8.43811),
('C5', 40.20352, -8.43811),
('C5', 40.20352, -8.42943),
('C5', 40.20734, -8.42943),
('C5', 40.20734, -8.43811),
('C6', 40.1997, -8.43811),
('C6', 40.1997, -8.42943),
('C6', 40.20352, -8.42943),
('C6', 40.20352, -8.43811),
('C7', 40.19588, -8.43811),
('C7', 40.19588, -8.42943),
('C7', 40.1997, -8.42943),
('C7', 40.1997, -8.43811),
('C8', 40.19206, -8.43811),
('C8', 40.19206, -8.42943),
('C8', 40.19588, -8.42943),
('C8', 40.19588, -8.43811),
('B1', 40.2188, -8.44679),
('B1', 40.2188, -8.43811),
('B1', 40.22262, -8.43811),
('B1', 40.22262, -8.44679),
('B2', 40.21498, -8.44679),
('B2', 40.21498, -8.43811),
('B2', 40.2188, -8.43811),
('B2', 40.2188, -8.44679),
('B3', 40.21116, -8.44679),
('B3', 40.21116, -8.43811),
('B3', 40.21498, -8.43811),
('B3', 40.21498, -8.44679),
('B4', 40.20734, -8.44679),
('B4', 40.20734, -8.43811),
('B4', 40.21116, -8.43811),
('B4', 40.21116, -8.44679),
('B5', 40.20352, -8.44679),
('B5', 40.20352, -8.43811),
('B5', 40.20734, -8.43811),
('B5', 40.20734, -8.44679),
('B6', 40.1997, -8.44679),
('B6', 40.1997, -8.43811),
('B6', 40.20352, -8.43811),
('B6', 40.20352, -8.44679),
('B7', 40.19588, -8.44679),
('B7', 40.19588, -8.43811),
('B7', 40.1997, -8.43811),
('B7', 40.1997, -8.44679),
('B8', 40.19206, -8.44679),
('B8', 40.19206, -8.43811),
('B8', 40.19588, -8.43811),
('B8', 40.19588, -8.44679),
('A1', 40.2188, -8.45547),
('A1', 40.2188, -8.44679),
('A1', 40.22262, -8.44679),
('A1', 40.22262, -8.45547),
('A2', 40.21498, -8.45547),
('A2', 40.21498, -8.44679),
('A2', 40.2188, -8.44679),
('A2', 40.2188, -8.45547),
('A3', 40.21116, -8.45547),
('A3', 40.21116, -8.44679),
('A3', 40.21498, -8.44679),
('A3', 40.21498, -8.45547),
('A4', 40.20734, -8.45547),
('A4', 40.20734, -8.44679),
('A4', 40.21116, -8.44679),
('A4', 40.21116, -8.45547),
('A5', 40.20352, -8.45547),
('A5', 40.20352, -8.44679),
('A5', 40.20734, -8.44679),
('A5', 40.20734, -8.45547),
('A6', 40.1997, -8.45547),
('A6', 40.1997, -8.44679),
('A6', 40.20352, -8.44679),
('A6', 40.20352, -8.45547),
('A7', 40.19588, -8.45547),
('A7', 40.19588, -8.44679),
('A7', 40.1997, -8.44679),
('A7', 40.1997, -8.45547),
('A8', 40.19206, -8.45547),
('A8', 40.19206, -8.44679),
('A8', 40.19588, -8.44679),
('A8', 40.19588, -8.45547);

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
('A1', '00FF00'),
('A2', '00FF00'),
('A3', '00FF00'),
('A4', '00FF00'),
('A5', '00FF00'),
('A6', '00FF00'),
('A7', '00FF00'),
('A8', '00FF00'),
('B1', '00FF00'),
('B2', '00FF00'),
('B3', '00FF00'),
('B4', '00FF00'),
('B5', '00FF00'),
('B6', '00FF00'),
('B7', '00FF00'),
('B8', '00FF00'),
('C1', '00FF00'),
('C2', '00FF00'),
('C3', '00FF00'),
('C4', '00FF00'),
('C5', '00FF00'),
('C6', '00FF00'),
('C7', '00FF00'),
('C8', '00FF00'),
('D1', '00FF00'),
('D2', '00FF00'),
('D3', '00FF00'),
('D4', '00FF00'),
('D5', '00FF00'),
('D6', '00FF00'),
('D7', '00FF00'),
('D8', '00FF00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
