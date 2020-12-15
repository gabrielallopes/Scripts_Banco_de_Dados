-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Dez-2020 às 00:17
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargofunc`
--

CREATE TABLE `cargofunc` (
  `codFuncionario` int(11) NOT NULL,
  `codCargo` int(11) NOT NULL,
  `dataEntrada` date NOT NULL,
  `dataSaida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargofunc`
--

INSERT INTO `cargofunc` (`codFuncionario`, `codCargo`, `dataEntrada`, `dataSaida`) VALUES
(1, 1, '2009-12-18', '0000-00-00'),
(1, 5, '2010-09-17', '2012-12-09'),
(1, 3, '2016-12-31', '0000-00-00'),
(1, 8, '2013-05-05', '2015-12-09'),
(4, 1, '2011-12-18', '0000-00-00'),
(4, 6, '2012-12-02', '2014-12-09'),
(4, 6, '2016-12-31', '2017-12-17'),
(2, 1, '2009-12-18', '0000-00-00'),
(2, 4, '2012-12-30', '2015-12-31'),
(2, 5, '2016-12-31', '0000-00-00'),
(2, 4, '2017-05-05', '0000-00-00'),
(2, 7, '2018-07-25', '0000-00-00'),
(3, 1, '2011-12-18', '0000-00-00'),
(3, 6, '2015-12-02', '2017-12-09'),
(5, 1, '2012-12-18', '0000-00-00'),
(5, 4, '2015-12-02', '2017-12-09'),
(5, 6, '2019-12-31', '0000-00-00'),
(6, 1, '2011-12-18', '0000-00-00'),
(6, 3, '2012-12-02', '2013-12-09'),
(6, 2, '2016-12-31', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `codCargo` int(11) NOT NULL,
  `cargo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`codCargo`, `cargo`) VALUES
(1, 'professor'),
(2, 'diretor'),
(3, 'coordPedagogico'),
(4, 'coordBiblioteca'),
(5, 'coordEnsinomedio'),
(6, 'coordInfo'),
(7, 'coordRh'),
(8, 'coordAdm');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `codFuncionario` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `dataEntrada` date DEFAULT NULL,
  `dataSaida` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codFuncionario`, `nome`, `dataEntrada`, `dataSaida`) VALUES
(1, 'Amanda', '2009-12-18', NULL),
(2, 'Agda', '2010-09-17', NULL),
(3, 'Cíntia', '2010-08-11', NULL),
(4, 'Anderson', '2011-05-05', NULL),
(5, 'Carlos', '2011-07-25', NULL),
(6, 'Célia', '2009-08-04', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargofunc`
--
ALTER TABLE `cargofunc`
  ADD KEY `codFuncionario` (`codFuncionario`),
  ADD KEY `codCargo` (`codCargo`);

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`codCargo`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codFuncionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `codCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cargofunc`
--
ALTER TABLE `cargofunc`
  ADD CONSTRAINT `cargofunc_ibfk_1` FOREIGN KEY (`codFuncionario`) REFERENCES `funcionario` (`codFuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cargofunc_ibfk_2` FOREIGN KEY (`codCargo`) REFERENCES `cargos` (`codCargo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
