-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Jul-2021 às 01:55
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `louvera`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produto`
--

CREATE TABLE `tb_produto` (
  `idProduto` int(11) NOT NULL,
  `idTipoProduto` int(11) NOT NULL COMMENT 'FK - Código identificador do id do tipo de produto',
  `TituloProduto` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Título do produto',
  `Descricao` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Descrição do produto',
  `FotoExibicao` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'Diretório da imagem exibida em todos os produtos',
  `FotoGPrimeira` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'Diretório da primeira foto grande',
  `FotoGSegunda` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'Diretório da segunda foto grande',
  `FotoGTerceira` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'Diretório da terceira foto grande',
  `FotoPequena` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'Diretório da primeira foto pequena',
  `FotoPSegunda` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'Diretório da segunda foto pequena',
  `FotoPTerceira` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'Diretório da terceira foto pequena',
  `Quantidade` int(11) DEFAULT NULL COMMENT 'Quantidade de produtos',
  `Preco` float DEFAULT NULL COMMENT 'Preço do produto',
  `Cor` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Cor do produto',
  `Tamanho` varchar(20) DEFAULT NULL COMMENT 'Tamanho do produto',
  `Marca` varchar(50) NOT NULL COMMENT 'Marca do produto.',
  `FlgFavorito` char(1) CHARACTER SET utf8 NOT NULL COMMENT 'Produto favorito: S - Sim / N - Não',
  `Carrinho` varchar(1) NOT NULL COMMENT 'Produto no carrinho: S - Sim / N - Não'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_produto`
--

INSERT INTO `tb_produto` (`idProduto`, `idTipoProduto`, `TituloProduto`, `Descricao`, `FotoExibicao`, `FotoGPrimeira`, `FotoGSegunda`, `FotoGTerceira`, `FotoPequena`, `FotoPSegunda`, `FotoPTerceira`, `Quantidade`, `Preco`, `Cor`, `Tamanho`, `Marca`, `FlgFavorito`, `Carrinho`) VALUES
(1, 3, 'L\'OCCITANE AU BRÉSIL CAPIM LIMÃO SABONETE PERFUMADO - 100G', 'Sabonete cremoso com refrescante fragrância cítrica verde.\r\nContém extrato de Capim-Limão.', 'img/produtos/sabonete-capim-limao.webp', 'img/produtos/sabonete-capim-limao.webp', 'img/produtos/sabonete-capim-limao-2.webp', 'img/produtos/sabonete-capim-limao-3.webp', 'img/produtos/sabonete-capim-limao-pequeno.webp', '', '', 40, 19.9, 'Verde', '100g', 'L\'OCCITANE', 'N', 'N'),
(2, 2, 'L\'OCCITANE AU BRÉSIL DEO COLÔNIA LINHA CAPIM-LIMÃO - 100ML', 'CAPIM LIMÃO: A brisa do entardecer traz a fragrância verde dos arbustos de Capim-Limão. Seu balanço espalha no ar uma fragrância fresca, picante e recheada de notas cítricas, proporcionando uma sensação de vigor que renova os sentidos. A Água de Colônia Desodorante Capim-Limão transmite a essência refrescante desta planta em uma fragrância cítrica verde que agrada a todos. Contém extrato de Capim-Limão.', 'img/produtos/capim-limao.webp', 'img/produtos/capim-limao.webp', 'img/produtos/capim-limao-2.webp', 'img/produtos/capim-limao-3.webp', 'img/produtos/capim-limao-pequeno.webp', '', '', 10, 99.9, 'Verde', '100ml', 'L\'OCCITANE', 'N', 'N'),
(3, 2, 'L\'OCCITANE AU BRÉSIL SPRAY PERFUMADO COMPOTAS - 200ML', 'ROMÃ: Inspirado nas fragrâncias da linha de compotas corporais, este spray perfumado de romã traz um vibrante acorde de frutas vermelhas, delicadamente envolvido por um corpo floral com notas de muguet e jasmim transparente, envelopado por um fundo amadeirado e âmbar.', 'img/produtos/spray-roma.webp', 'img/produtos/spray-roma.webp', 'img/produtos/spray-roma-2.webp', 'img/produtos/spray-roma-3.webp', 'img/produtos/spray-roma-pequeno.jpg', '', '', 3, 79.9, 'Rosa', '200ml', 'L\'OCCITANE', 'N', 'N'),
(4, 4, 'TATTUÔ CREME HIDRATANTE PARA TATUAGEM - 150G', 'Desenvolvido com ativos naturais, o hidratante é indicado para uso durante o processo de cicatrização da pele após realizar uma tatuagem, e também pode ser usado com frequência para realçar o brilho e os traços de tatuagens antigas.', 'img/produtos/creme-tatuagem.webp', 'img/produtos/creme-tatuagem.webp', 'img/produtos/creme-tatuagem-2.webp', 'img/produtos/creme-tatuagem-3.webp', 'img/produtos/creme-tatuagem-pequeno.webp', '', '', 35, 59.9, 'Rosa', '150G', 'TATTUÔ', 'N', 'N'),
(5, 4, 'OI, BONITA! CREME HIDRATATANTE - 250ML', 'Enriquecido com óleo de uva hidratante e manteiga de karité, este hidratante é o aliado para as mulheres jovens que desejam uma pele, macia, renovada e cheia de vitalidade.', 'img/produtos/oi-bonita-creme-hidratatante.webp', 'img/produtos/oi-bonita-creme-hidratatante.webp', 'img/produtos/oi-bonita-creme-hidratatante-2.webp', 'img/produtos/oi-bonita-creme-hidratatante-3.webp', 'img/produtos/oi-bonita-creme-hidratatante-pequeno.webp', '', '', 5, 89.9, 'Roxo', '250ML', 'OI, BONITA!', 'N', 'N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipoproduto`
--

CREATE TABLE `tb_tipoproduto` (
  `idTipoProduto` int(11) NOT NULL,
  `Descricao` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'Descrição do tipo de produto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_tipoproduto`
--

INSERT INTO `tb_tipoproduto` (`idTipoProduto`, `Descricao`) VALUES
(1, 'Óleo'),
(2, 'Perfume'),
(3, 'Sabonete'),
(4, 'Creme');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_produto`
--
ALTER TABLE `tb_produto`
  ADD PRIMARY KEY (`idProduto`),
  ADD KEY `tb_TipoProduto_ibfk_1` (`idTipoProduto`);

--
-- Índices para tabela `tb_tipoproduto`
--
ALTER TABLE `tb_tipoproduto`
  ADD PRIMARY KEY (`idTipoProduto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_produto`
--
ALTER TABLE `tb_produto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_tipoproduto`
--
ALTER TABLE `tb_tipoproduto`
  MODIFY `idTipoProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_produto`
--
ALTER TABLE `tb_produto`
  ADD CONSTRAINT `tb_TipoProduto_ibfk_1` FOREIGN KEY (`idTipoProduto`) REFERENCES `tb_tipoproduto` (`idTipoProduto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
