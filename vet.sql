-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Jun-2020 às 01:48
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vet`
--
CREATE DATABASE IF NOT EXISTS `vet` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vet`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `codAnimal` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `especie` varchar(150) NOT NULL,
  `sexo` varchar(150) NOT NULL,
  `cor` varchar(150) NOT NULL,
  `raca` varchar(150) NOT NULL,
  `peso` decimal(7,2) NOT NULL,
  `codDono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`codAnimal`, `nome`, `especie`, `sexo`, `cor`, `raca`, `peso`, `codDono`) VALUES
(1, 'Toto', 'Cachorro', 'Macho', 'Preto', 'SRD', '5.50', 28),
(2, 'Athos', 'Cachorro', 'Macho', 'Preto', 'Labrador', '35.30', 1),
(3, 'Eros', 'Cachorro', 'Macho', 'Preto', 'Labrador', '35.60', 1),
(4, 'Kiara Rapadura', 'Gato', 'Fêmea', 'Malhada', 'SRD', '3.50', 1),
(5, 'Tonico', 'Calopsita', 'Fêmea', 'Albina', 'Arlequin', '0.70', 2),
(6, 'Amada Caraca', 'Cobra', 'Fêmea', 'Amarela', 'Jibóia', '50.00', 5),
(7, 'Billy', 'Cachorro', 'Macho', 'Marrom e Branco', 'Beagle', '20.50', 26),
(8, 'Biscoito', 'Gato', 'Macho', 'Cinza', 'Angorá', '7.50', 27),
(9, 'João Kakota', 'Chinchila', 'Macho', 'Marrom', 'Aracrara', '0.50', 29),
(10, 'Caracondo', 'Gato', 'Macho', 'Azul', 'SRD', '9.00', 30),
(11, 'Astronildo', 'Porco', 'Macho', 'Rosa', 'Deractori', '4.50', 4),
(23, 'Gigi', 'Cobra', 'Femêa', 'Vermelha', 'Python', '15.50', 3),
(26, 'Amofadinha Zapatino', 'Cachorro', 'Macho', 'Branco', 'Buldog', '30.00', 28);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendende`
--

CREATE TABLE `atendende` (
  `codAtend` int(11) NOT NULL,
  `cpf` varchar(150) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `rg` varchar(150) NOT NULL,
  `telFixo` varchar(150) NOT NULL,
  `telCel` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `atendende`
--

INSERT INTO `atendende` (`codAtend`, `cpf`, `nome`, `email`, `rg`, `telFixo`, `telCel`) VALUES
(1, '345.345.567-09', 'Carolina Carrera', 'carolina@gmail.com', '33.456.555-9', '11-2222-2222', '11-98888-7777'),
(2, '333.333.333-33', 'Samanta Adelina', 'samanta.gmail.com', '33.444.555-x', '11-43434-3333', '11-96666-2222');

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta_agenda`
--

CREATE TABLE `consulta_agenda` (
  `codCons` int(11) NOT NULL,
  `data` date NOT NULL,
  `diagnostico` varchar(255) NOT NULL,
  `preco` decimal(7,2) NOT NULL,
  `hora` time NOT NULL,
  `codDono` int(11) DEFAULT NULL,
  `codAnimal` int(11) DEFAULT NULL,
  `codAtend` int(11) DEFAULT NULL,
  `codVet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `consulta_agenda`
--

INSERT INTO `consulta_agenda` (`codCons`, `data`, `diagnostico`, `preco`, `hora`, `codDono`, `codAnimal`, `codAtend`, `codVet`) VALUES
(1, '2020-06-23', 'Pneumonia ', '60.00', '16:13:55', 1, 2, 1, 2),
(2, '2020-06-23', 'Briga de Rua - Orelha rasgada - ', '150.00', '00:13:33', 28, 1, 2, 1),
(3, '2020-06-09', 'Castração', '400.00', '04:21:01', 1, 4, 1, 1),
(4, '2020-04-07', 'Cancêr - Atendimento Quimiterapia', '1500.00', '10:22:38', 4, 11, 1, 1),
(5, '2020-02-04', 'Pancreatite- Medicação, ficou em observação por 2 horas.', '300.00', '09:24:20', 30, 10, 2, 2),
(6, '2019-07-01', 'Castração', '500.00', '16:26:30', 1, 4, 2, 1),
(7, '2018-10-04', 'Castração', '300.00', '11:27:49', 29, 9, 1, 2),
(8, '2017-08-02', 'Gripe', '50.00', '12:29:59', 27, 8, 1, 2),
(9, '2020-06-16', 'Cinomose - Consulta e Medicação na veia', '100.00', '16:31:28', 26, 7, 2, 2),
(10, '2020-06-16', 'Vacina Gripe', '60.00', '12:33:40', 1, 3, 1, 1),
(11, '2019-07-03', 'Vacina v10', '60.00', '13:34:43', 30, 10, 1, 1),
(12, '2020-03-03', 'Vacina Raiva', '40.00', '13:07:20', 28, 1, 1, 1),
(13, '2020-04-06', 'Vacina V4', '60.00', '10:08:33', 1, 4, 2, 2),
(14, '2019-09-03', 'Pneumonia - Deve ficar Internado 2 dias', '800.00', '12:41:38', 2, 5, 1, 2),
(15, '2019-12-22', 'Pneumonia - Febre alta - Medicado na veia, tomar medicação em casa', '300.00', '14:43:03', 29, 9, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dono`
--

CREATE TABLE `dono` (
  `codDono` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `cpf` varchar(150) NOT NULL,
  `telFixo` varchar(150) NOT NULL,
  `rg` varchar(150) DEFAULT NULL,
  `telCel` varchar(150) NOT NULL,
  `logradouro` varchar(150) NOT NULL,
  `num` int(11) NOT NULL,
  `complemento` varchar(150) DEFAULT NULL,
  `bairro` varchar(150) NOT NULL,
  `cidade` varchar(150) NOT NULL,
  `uf` char(2) NOT NULL,
  `cep` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dono`
--

INSERT INTO `dono` (`codDono`, `nome`, `email`, `cpf`, `telFixo`, `rg`, `telCel`, `logradouro`, `num`, `complemento`, `bairro`, `cidade`, `uf`, `cep`) VALUES
(1, 'Cintia Pinho', 'cintia@gmail.com', '234.456.987-54', '11-34567-8765', '23.456.765-0', '11-54329-9876', 'Rua A', 10, 'Apto 21', 'Vila algum', 'Mauá', 'SP', '98765-876'),
(2, 'Alberto de Souza', 'alberto@gmail.com', '234.654.234-09', '11-8765-8765', '43.432.432-9', '11-99999-8888', 'Rua B', 0, 'Casa 2', 'Vila Neiva', 'Ribeirão  Pires', 'SP', '98765-098'),
(3, 'Carlina de Almeida Silva', 'carlina@gmail.com', '234.765.987-09', '11-2345-2335', '12.123.123-7', '11-11111-2222', 'Rua C', 34, '', 'Jd. Logo Alí', 'Santo André', 'SP', '98768-000'),
(4, 'Josefina Aguiar dos Santos', 'josefina@gmail.com', '333.333.444-09', '11-2222-3345', '11.222.333.5', '11-99999-6666', 'Rua DD', 555, 'Casa 3', 'Vila Nova', 'Suzano', 'SP', '77777-666'),
(5, 'Carlos de Souza Augusto', 'carlos@gmail.com', '333.555.666-98', '11-8888-9999', '33.444.555-6', '11-77777-4444', 'Av. Jacobina', 87, 'Apto 33', 'Jd AliAgora', 'Mauá', 'SP', '99999-888'),
(26, 'Amora Amorim', 'amora@gmail.com', '222.456.987-54', '11-34567-5555', '23.444.765-0', '11-55555-9876', 'Rua Japão', 88, 'Apto 99', 'Vila Japaro', 'Ribeirão Pires', 'SP', '98765-876'),
(27, 'Augusto de Pinto', 'augusto@gmail.com', '666.654.234-09', '11-7676-8765', '55.432.432-9', '11-87878-8888', 'Rua Estema', 0, NULL, 'Vila Sapatana', 'Suzano', 'SP', '98765-444'),
(28, 'Estela Cardoso', 'estela@gmail.com', '234.666.000-09', '11-98766-2335', '22.222.123-7', '11-88888-2222', 'Rua Caraca', 6677, '', 'Jd. Artigo', 'Santo André', 'SP', '98768-222'),
(29, 'Amanda Amalho dos Santos', 'amanda@gmail.com', '666.333.444-09', '11-7777-3345', '77.222.333.5', '11-92222-6666', 'Rua Jaspion', 876, NULL, 'Vila Depois', 'São Caetano', 'SP', '54545-666'),
(30, 'Jacinto Amorin Araújo', 'jacinto@gmail.com', '878.555.666-98', '11-45688-9999', '87.344.555-6', '11-79867-4444', 'Av. Alamoa', 988, 'Apto 765', 'Jd Acapuco', 'São Caetano', 'SP', '65488-888');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veterinario`
--

CREATE TABLE `veterinario` (
  `codVet` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `cpf` varchar(150) NOT NULL,
  `telCel` varchar(150) NOT NULL,
  `telFixo` varchar(150) DEFAULT NULL,
  `crmv` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `logradouro` varchar(150) NOT NULL,
  `num` int(11) NOT NULL,
  `complemento` varchar(150) DEFAULT NULL,
  `bairro` varchar(150) NOT NULL,
  `cidade` varchar(150) NOT NULL,
  `uf` char(2) NOT NULL,
  `cep` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `veterinario`
--

INSERT INTO `veterinario` (`codVet`, `nome`, `cpf`, `telCel`, `telFixo`, `crmv`, `email`, `logradouro`, `num`, `complemento`, `bairro`, `cidade`, `uf`, `cep`) VALUES
(1, 'Jéssica Pinho', '234.234.765.09', '11-98776-9876', '11-1111-2222', '23405-6', 'jessica@gmail.com', 'Rua Alameda Deida', 9876, 'jessica@gmail.com', 'Vila Carambola', 'Santo André', 'SP', '87654-987'),
(2, 'Aroldo Sofito', '223.222.333-98', '11-23456-9999', '11-2222-9999', '54324-9', 'aroldo@gmail.com', 'Rua Ceideme', 654, 'Apto 21', 'Vila Augusta', 'Mauá', 'SP', '99999-888');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`codAnimal`),
  ADD KEY `codDono` (`codDono`);

--
-- Índices para tabela `atendende`
--
ALTER TABLE `atendende`
  ADD PRIMARY KEY (`codAtend`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `rg` (`rg`);

--
-- Índices para tabela `consulta_agenda`
--
ALTER TABLE `consulta_agenda`
  ADD PRIMARY KEY (`codCons`),
  ADD KEY `codDono` (`codDono`),
  ADD KEY `codAnimal` (`codAnimal`),
  ADD KEY `codAtend` (`codAtend`),
  ADD KEY `codVet` (`codVet`);

--
-- Índices para tabela `dono`
--
ALTER TABLE `dono`
  ADD PRIMARY KEY (`codDono`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `rg` (`rg`);

--
-- Índices para tabela `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`codVet`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `crmv` (`crmv`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animal`
--
ALTER TABLE `animal`
  MODIFY `codAnimal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `atendende`
--
ALTER TABLE `atendende`
  MODIFY `codAtend` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `consulta_agenda`
--
ALTER TABLE `consulta_agenda`
  MODIFY `codCons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `dono`
--
ALTER TABLE `dono`
  MODIFY `codDono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `veterinario`
--
ALTER TABLE `veterinario`
  MODIFY `codVet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`codDono`) REFERENCES `dono` (`codDono`);

--
-- Limitadores para a tabela `consulta_agenda`
--
ALTER TABLE `consulta_agenda`
  ADD CONSTRAINT `consulta_agenda_ibfk_1` FOREIGN KEY (`codDono`) REFERENCES `dono` (`codDono`),
  ADD CONSTRAINT `consulta_agenda_ibfk_2` FOREIGN KEY (`codAnimal`) REFERENCES `animal` (`codAnimal`),
  ADD CONSTRAINT `consulta_agenda_ibfk_3` FOREIGN KEY (`codAtend`) REFERENCES `atendende` (`codAtend`),
  ADD CONSTRAINT `consulta_agenda_ibfk_4` FOREIGN KEY (`codVet`) REFERENCES `veterinario` (`codVet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
