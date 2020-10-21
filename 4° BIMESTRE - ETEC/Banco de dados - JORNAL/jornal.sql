-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Out-2020 às 05:37
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
-- Banco de dados: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Moda'),
(2, 'Entretenimento'),
(3, 'Tecnologia'),
(4, 'Política'),
(5, 'Esporte'),
(6, 'Educação'),
(7, 'Gastronomia'),
(8, 'Saúde'),
(9, 'Cinema');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `noticia` text DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `noticia`, `titulo`, `codRedator`, `codCategoria`, `dia`, `mes`, `ano`) VALUES
(1, 'Donald Trump e Joe Biden se encontram nesta quinta-feira (22) em Nashville, no Tennessee, para o último debate dos candidatos antes da eleição presidencial dos Estados Unidos, marcada para 3 de novembro.\r\n\r\nO debate terá transmissão do G1 e da GloboNews a partir das 22h (hora de Brasília).', 'Donald Trump e Joe Biden fazem último debate antes da eleição nesta quinta-feira', 6, 4, 14, 4, 2020),
(2, 'O pai de uma aluna que pediu uma mobilização nas redes sociais contra o professor francês decapitado na última sexta-feira, alguns dias após exibir charges de Maomé nas aulas, trocou mensagens por celular com o assassino antes do ataque - informaram fontes próximas ao caso. Essas trocas de mensagens ocorreram pelo aplicativo Whatsapp, segundo as mesmas fontes.', 'Pai de aluna e agressor trocaram mensagens antes de decapitação de professor na França', 8, 6, 8, 9, 2012),
(3, 'A conturbada separação de Andressa Suita e Gusttavo Lima segue dando o que falar. Na tarde desta terça-feira (20), Zé Felipe fez uma série de stories no Instagram e revelou que recebeu ameaças de Mallu Ohana, mulher apontada como pivô da separação de Gusttavo e Andressa.\r\n\r\nTudo começou quando Ohana mandou um áudio para a jornalista Fabíola Reipert dizendo que teve um affair com o sertanejo quando ele ainda era casado com a modelo. Ainda segundo ela, o casal teria ficado na casa do cantor Leonardo, pai de Zé Felipe.', 'Zé Felipe revela ter sofrido ameaças de Mallu Ohana sobre caso com Gusttavo Lima', 9, 2, 15, 10, 2020),
(4, 'Um dia após confirmar o término do relacionamento de 12 anos com Luan Santana em uma publicação no Instagram, Jade Magalhães viu seu número de seguidores na rede social subir. Até o momento, de acordo com a plataforma SocialBlade, a estilista já ganhou 173.255 novos seguidores. Ao todo, ela acumula 1,2 milhões de fãs no Instagram.', 'Jade Magalhães ganha 173 mil seguidores em rede após post sobre separação.', 7, 2, 24, 9, 2017),
(5, 'Mesmo garantido nas oitavas de final, o Santos entrou em campo na última rodada da fase de grupos da Libertadores com força máxima. Saiu perdendo, na Vila Belmiro, mas a insistência com diversos atacantes premiou o Peixe com a vitória por 2 a 1 sobre o Defensa y Justicia e agradou ao técnico Cuca.\r\n\r\nO resultado desta terça-feira deixou o Santos com 16 pontos no Grupo G da Libertadores, isolado na liderança e com mais do que o dobro de pontos do segundo colocado (o Delfín, com sete). Cuca valorizou a campanha do Peixe na Libertadores.', 'Cuca valoriza insistência do Santos e liderança na Libertadores: \"Fomos premiados\"', 5, 5, 30, 8, 2018),
(6, 'Xiaomi apresenta carregador sem fio ultra rápido; vazam imagens da linha Galaxy S21; iPhone 12 é homologado no Brasil e tem possível câmera decepcionante; Xiaomi cutuca Apple por falta de carregador nos novos iPhones; e informações sobre aquecimento envolvendo os novos Xbox e PlayStation 5.\r\n\r\nEssas são as novidades do mundo da tecnologia que você confere agora com o Plantão do TudoCelular. Abaixo temos um resumo das principais notícias com os devidos links para que você confira as matérias completas.', 'Carregador sem fio Xiaomi de 80W, imagens do Galaxy S21 Ultra e mais | Plantão TC', 4, 3, 1, 10, 2016),
(7, 'Para perder ou manter o peso, é preciso muito mais do que força de vontade para algumas pessoas. Isso porque o emagrecimento e o consumo em excesso de alimentos podem estar associados a atividade cerebral. É o que indica uma pesquisa da Universidade Ben-Gurion do Negev, de Israel, que foi publicado no periódico NeuroImage. De acordo com os pesquisadores, pessoas com uma resposta neural aumentada ao ver e sentir o odor da comida, comem mais e ganham mais peso. Os especialistas descobriram ainda uma relação entre os neurônios e a frequência elétrica basal gástrica, que está relacionada com a perda de peso. ', 'Perder peso pode estar relacionado com a atividade cerebral, diz estudo.', 3, 8, 12, 3, 2014),
(8, 'Para quem pensa que a noite de hoje vai terminar em pizza, já pode se preparar. Literalmente, isso vai acontecer com os competidores do MasterChef Brasil que não dominarem o desafio do 11º episódio do programa, que vai ao ar, nesta terça-feira, 22.\r\n\r\nOs cozinheiros amadores terão que mostrar que entendem mesmo do assunto para conquistar o paladar dos chefs Paola Carosella, Henrique Fogaça e Érick Jacquin. E não serão somente os especialistas que estarão de olho nos truques e nas habilidades dos participantes. Os amantes de pizza (um dos pratos mais apreciados pelos brasileiros), também estarão ligados na telinha da Band, para aprender todos os macetes gastronômicos, que eles irão apresentar aos jurados.', 'MasterChef Brasil: o dia da pizza perfeita', 1, 7, 19, 5, 2007),
(9, 'O agito diário e as variedades de alimentos industrializados fazem com que muitas pessoas optem pela praticidade e deixem de lado o que há de mais importante: a saúde e o autocuidado. Mas, com a mudança de comportamento, durante a pandemia do coronavírus, muitas pessoas foram para a cozinha e apostaram em uma alimentação mais natural e saudável, por meio de receitas caseiras.\r\n\r\nSegundo a nutricionista Daniele Reis, geralmente, aquilo que é mais rápido e fácil não é considerado de qualidade. “Nestes casos, a saúde fica em segundo lugar e as doenças surgem mais cedo”, afirma a especialista, salientando a necessidade de se reeducar e ter planos alimentares voltados às origens dos avós, que naquela época, consumiam aquilo que produziam.', 'Comida de verdade: a substituição dos industrializados por refeições naturais e caseiras', 9, 7, 17, 2, 2011),
(10, 'Se você gosta de moda, estilo e comportamento, já deve ter percebido que a cultura do look do dia ficou antiquada. Ser fashion hoje transcende grifes, passarelas, lojas e influenciadores. Ser fashion é sobre muitas outras coisas.\r\nÉ sobre valorizar a sua originalidade, ignorando tendências, criando o seu próprio estilo, sem permitir que ninguém te acuse - não por acaso, expressões como genderfluid, body positive, upcycling, e-girl e neodrag ganham cada mais espaço no vocabulário do estilo da vez - e da sociedade.', 'Modas Plurais: Geração Z abre caminhos para a moda além do look do dia', 8, 1, 27, 12, 2019),
(11, 'Muita coisa ruim já foi produzida na televisão envolvendo super-heróis. Com forte apelo adolescente, algumas produções caíram no esquecimento ou conseguiram espaço no coração de espectadores exatamente por apelarem para clichês. Foi no cinema que os personagens da Marvel e da DC parecem ter se encontrado, com sucessos grandiosos de filmes como \"Vingadores: Ultimato\", \"Batman - O Cavaleiro das Trevas\", \"Mulher Maravilha\" ou \"Capitão América: Guerra Civil\". Embora ainda muito rentável, o gênero não tem apresentado tantas novidades ou mudanças nos últimos anos.', 'Ao subverter o gênero, séries deixam heróis mais interessantes que cinema.', 10, 9, 20, 11, 2018),
(12, 'Com um documentário sobre seu exílio voluntário na Itália nos anos 1970, o Festival de Cinema de Roma homenageou o diretor brasileiro Glauber Rocha, considerado o pai do \"Cinema Novo\". O documentário, intitulado \"Glauber, Claro\", do cineasta brasileiro César Augusto Meneghetti, 55 anos, apresenta ao espectador o espírito de Rocha, em sua vital criatividade acompanhada pela necessidade de protestar à sua maneira contra um sistema e um mundo que rejeitou.', 'Festival de Cinema de Roma homenageia Glauber Rocha.', 7, 9, 29, 1, 2015),
(13, 'O América segue embalado na Série B do Campeonato Brasileiro. Na tarde desta terça-feira, o time comandado por Lisca saiu perdendo, mas bateu o Brasil de Pelotas de virada, por 3 a 1, no Independência, em duelo válido pela 17ª rodada da competição. O time visitante saiu na frente com gol de Bruno José, mas Léo Passos e Ademir, duas vezes, garantiram o triunfo do Coelho em seus domínios. \r\n\r\nFoi a quarta vitória seguida do América na competição. O time alviverde soma sete jogos consecutivos de invencibilidade na Série B: quatro vitórias e três empates.', 'América vence o Brasil de Pelotas de virada e iguala pontuação do líder na Série B', 6, 5, 7, 4, 2014),
(14, 'O presidente Jair Bolsonaro (sem partido) encaminhou hoje ao Congresso Nacional o Marco Legal das Startups. É um projeto de lei que promete incentivar novas empresas e melhorar o ambiente de negócios. \"O Brasil é o 4º maior mercado digital do mundo. Temos evoluído muito, mas queremos avançar mais ainda, facilitando o ambiente de negócios\", afirmou Bolsonaro, em vídeo publicado nas redes sociais sobre esse tema.', 'Jair Bolsonaro encaminha Marco Legal das Startups ao Congresso Nacional.', 9, 4, 3, 10, 2016);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `ddd`, `telefone`, `email`, `cidade`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'Laura ', 'Machado', 11, '94297-4835', 'laura11machado@gmail.com', 'Ribeirão Pires', 5, 10, 7, 1990),
(2, 'Pedro', 'Henrique Cobra', 11, '99903-5769', 'pedrohenrique@gmail.com', 'Mauá', 9, 21, 2, 1994),
(3, 'Nicolle', 'Camargo', 11, '94987-2863', 'camargo23nicolle@gmail.com', 'Rio Grande da Serra', 8, 14, 7, 1966),
(4, 'Gustav', 'Zacharias', 11, '97654-3653', 'guszacharias@gmail.com', 'Santo André', 7, 3, 12, 2005),
(5, 'Adrielly', 'Lopes', 11, '99833-5878', 'adrielly444lopes@gmail.com', 'Ribeirão Pires', 9, 7, 1, 1974),
(6, 'Marianna', 'Starchvski', 11, '95476-3841', 'marii099anna@gmail.com', 'Mauá', 6, 11, 5, 2000),
(7, 'Tawan', 'Andrade', 11, '97532-4632', 'tawan22andrade@gmail.com', 'Rio Grande da Serra', 2, 13, 4, 1959),
(8, 'Igor', 'Calamari', 11, '95372-67342', 'igorcalamari@gmail.com', 'Ribeirão Pires', 4, 29, 10, 1989),
(9, 'Gabriela', 'Montenegro', 11, '96743-4262', 'gabriela112monte@gmail.com', 'Mauá', 9, 1, 11, 1996),
(10, 'Diego', 'Coelho', 11, '95276-4748', 'diego222coelho@gmail.com', 'Rio Grande da Serra', 4, 10, 10, 1954);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1A'),
(2, '2A'),
(3, '3A'),
(4, '1B'),
(5, '2B'),
(6, '3B'),
(7, '1C'),
(8, '2C'),
(9, '3C');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
