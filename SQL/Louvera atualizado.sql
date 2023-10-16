-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/10/2023 às 22:34
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

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

DELIMITER $$
--
-- Procedimentos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sto_ValidaAcesso` (IN `vLogin` VARCHAR(100), IN `vSenha` VARCHAR(50))  NO SQL SELECT *
    FROM tb_Usuario
    WHERE Login = vLogin 
    AND Senha = MD5(vSenha)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sto_ValidaUsuario` (IN `vLogin` VARCHAR(100))  NO SQL SELECT *
    FROM tb_Usuario
    WHERE Login = vLogin$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_produto`
--

CREATE TABLE `tb_produto` (
  `idProduto` int(11) NOT NULL,
  `idTipoProduto` int(11) NOT NULL COMMENT 'FK - Código identificador do id do tipo de produto',
  `TituloProduto` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Título do produto',
  `Descricao` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Descrição do produto',
  `FotoExibicao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Diretório da imagem exibida em todos os produtos',
  `FotoGPrimeira` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Diretório da primeira foto grande',
  `FotoGSegunda` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Diretório da segunda foto grande',
  `FotoGTerceira` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Diretório da terceira foto grande',
  `FotoPequena` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Diretório da primeira foto pequena',
  `FotoPSegunda` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Diretório da segunda foto pequena',
  `FotoPTerceira` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Diretório da terceira foto pequena',
  `Quantidade` int(11) DEFAULT NULL COMMENT 'Quantidade de produtos',
  `Preco` float DEFAULT NULL COMMENT 'Preço do produto',
  `Cor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Cor do produto',
  `Tamanho` varchar(20) DEFAULT NULL COMMENT 'Tamanho do produto',
  `Marca` varchar(50) NOT NULL COMMENT 'Marca do produto.',
  `FlgFavorito` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Produto favorito: S - Sim / N - Não',
  `Carrinho` varchar(1) NOT NULL COMMENT 'Produto no carrinho: S - Sim / N - Não'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_produto`
--

INSERT INTO `tb_produto` (`idProduto`, `idTipoProduto`, `TituloProduto`, `Descricao`, `FotoExibicao`, `FotoGPrimeira`, `FotoGSegunda`, `FotoGTerceira`, `FotoPequena`, `FotoPSegunda`, `FotoPTerceira`, `Quantidade`, `Preco`, `Cor`, `Tamanho`, `Marca`, `FlgFavorito`, `Carrinho`) VALUES
(1, 3, 'L\'OCCITANE AU BRÉSIL CAPIM LIMÃO SABONETE PERFUMADO - 100G', 'Sabonete cremoso com refrescante fragrância cítrica verde.\r\nContém extrato de Capim-Limão.', 'img/produtos/sabonete-capim-limao.webp', 'img/produtos/sabonete-capim-limao.webp', 'img/produtos/sabonete-capim-limao-2.webp', 'img/produtos/sabonete-capim-limao-3.webp', 'img/produtos/sabonete-capim-limao-pequeno.webp', '', '', 40, 19.9, 'Verde', '100g', 'L\'OCCITANE', 'N', 'S'),
(2, 2, 'L\'OCCITANE AU BRÉSIL DEO COLÔNIA LINHA CAPIM-LIMÃO - 100ML', 'CAPIM LIMÃO: A brisa do entardecer traz a fragrância verde dos arbustos de Capim-Limão. Seu balanço espalha no ar uma fragrância fresca, picante e recheada de notas cítricas, proporcionando uma sensação de vigor que renova os sentidos. A Água de Colônia Desodorante Capim-Limão transmite a essência refrescante desta planta em uma fragrância cítrica verde que agrada a todos. Contém extrato de Capim-Limão.', 'img/produtos/capim-limao.webp', 'img/produtos/capim-limao.webp', 'img/produtos/capim-limao-2.webp', 'img/produtos/capim-limao-3.webp', 'img/produtos/capim-limao-pequeno.webp', '', '', 10, 99.9, 'Verde', '100ml', 'L\'OCCITANE', 'N', 'S'),
(3, 2, 'L\'OCCITANE AU BRÉSIL SPRAY PERFUMADO COMPOTAS - 200ML', 'ROMÃ: Inspirado nas fragrâncias da linha de compotas corporais, este spray perfumado de romã traz um vibrante acorde de frutas vermelhas, delicadamente envolvido por um corpo floral com notas de muguet e jasmim transparente, envelopado por um fundo amadeirado e âmbar.', 'img/produtos/spray-roma.webp', 'img/produtos/spray-roma.webp', 'img/produtos/spray-roma-2.webp', 'img/produtos/spray-roma-3.webp', 'img/produtos/spray-roma-pequeno.jpg', '', '', 3, 79.9, 'Rosa', '200ml', 'L\'OCCITANE', 'N', 'S'),
(4, 4, 'TATTUÔ CREME HIDRATANTE PARA TATUAGEM - 150G', 'Desenvolvido com ativos naturais, o hidratante é indicado para uso durante o processo de cicatrização da pele após realizar uma tatuagem, e também pode ser usado com frequência para realçar o brilho e os traços de tatuagens antigas.', 'img/produtos/creme-tatuagem.webp', 'img/produtos/creme-tatuagem.webp', 'img/produtos/creme-tatuagem-2.webp', 'img/produtos/creme-tatuagem-3.webp', 'img/produtos/creme-tatuagem-pequeno.webp', '', '', 35, 59.9, 'Rosa', '150G', 'TATTUÔ', 'N', 'S'),
(118, 4, 'THE BODY SHOP LOÇÃO DESODORANTE HIDRATANTE - 250ML', 'LEITE DE BAOBÁ: Loção hidratante corporal com manteiga de karité e leite vegetal de Baobá que hidrata e protege a pele deixando-a perfumada.', 'img/produtos/the-body-shop-locao-desodorante-hidratante-250ml-sakura-no-ki-01.jpg', 'img/produtos/the-body-shop-locao-desodorante-hidratante-250ml-sakura-no-ki-01.jpg', 'img/produtos/the-body-shop-locao-desodorante-hidratante-250ml-sakura-no-ki-02.jpg', 'img/produtos/the-body-shop-locao-desodorante-hidratante-250ml-sakura-no-ki-03.jpg', 'img/produtos/the-body-shop-locao-desodorante-hidratante-250ml-sakura-no-ki-01.jpg', '', '', 10, 59.9, 'Rosa', '250 mL', 'SAKURA NO KI', 'N', 'N'),
(119, 3, 'HERBIA SABONETE LÍQUIDO - 300ML', 'O Sabonete Líquido orgânico e vegano Lavanda e Verbena Branca Herbia foi desenvolvido para promover limpeza e higienização eficaz, porém suave.', 'img/produtos/herbia-sabonete-liquido-300ml-lavanda-verbena-01.jpg', 'img/produtos/herbia-sabonete-liquido-300ml-lavanda-verbena-01.jpg', 'img/produtos/herbia-sabonete-liquido-300ml-lavanda-verbena-02.jpg', 'img/produtos/herbia-sabonete-liquido-300ml-lavanda-verbena-01.jpg', 'img/produtos/', '', '', 10, 46.6, 'Roxo', '300ML', 'HERBIA', 'N', 'N'),
(120, 4, 'SANTAPELE CREME HIDRATANTE MÃOS ALTA PERFORMANCE - 45G', 'O hidratante para mãos Alta Performance Açaí e Flor de Vitória-Régia restaura e hidrata profundamente a pele.', 'img/produtos/santapele-creme-hidratante-maos-alta-performance-45g-cacau-e-flor-de-heliconia-01.jpg', 'img/produtos/santapele-creme-hidratante-maos-alta-performance-45g-cacau-e-flor-de-heliconia-01.jpg', 'img/produtos/santapele-creme-hidratante-maos-alta-performance-45g-cacau-e-flor-de-heliconia-02.jpg', 'img/produtos/santapele-creme-hidratante-maos-alta-performance-45g-cacau-e-flor-de-heliconia-01.jpg', 'img/produtos/', '', '', 10, 42, 'Verde', '45G', 'SANTAPELE', 'N', 'N'),
(121, 3, 'FEITO BRASIL SABONETE EM BARRA DOM TROPICAL - 80G', 'Experimente um momento de banho repleto de fragrância, cuidado e esfoliação! O Picolé de Goiaba é uma experiência divertida de limpeza e esfoliação suave com cápsulas de vitamina E!', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-goiaba-01.webp', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-goiaba-01.webp', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-goiaba-02.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-goiaba-03.jpg', 'img/produtos/', '', '', 10, 39, 'Rosa', '80G', 'FEITO BRASIL', 'N', 'N'),
(122, 3, 'FEITO BRASIL SABONETE EM BARRA DOM TROPICAL - 80G', 'Esfoliação intensa e a fragrância marcante da Jabuticaba! O Picolé de Jabuticaba traz partículas esfoliantes naturais e a energia da natureza para promover um banho mais divertido e restaurador!', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-jabuticaba-01.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-jabuticaba-01.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-jabuticaba-02.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-jabuticaba-03.jpg', 'img/produtos/', '', '', 10, 39, 'Roxo', '80G', 'FEITO BRASIL', 'N', 'N'),
(123, 3, 'HERBIA SABONETE LÍQUIDO - 300ML', 'O Sabonete Líquido orgânico e vegano Lavanda e Verbena Branca Herbia foi desenvolvido para promover limpeza e higienização eficaz, porém suave.', 'img/produtos/herbia-sabonete-liquido-300ml-lippia-alba-01.jpg', 'img/produtos/herbia-sabonete-liquido-300ml-lippia-alba-01.jpg', 'img/produtos/herbia-sabonete-liquido-300ml-lavanda-verbena-02.jpg', 'img/produtos/herbia-sabonete-liquido-300ml-lippia-alba-01.jpg', 'img/produtos/', '', '', 10, 46.6, 'Azul', '300ML', 'HERBIA ', 'N', 'N'),
(124, 1, 'BY SAMIA ÓLEO PARA BANHO E MASSAGEM - 110ML', 'Nosso Óleo de Massagem Relaxante possui em sua composição os óleos de Lavanda, Laranja, Lemongrass e Patchuli. É um óleo relaxante para o corpo e para a mente. Indicado para: todos os tipos de pele.', 'img/produtos/by-samia-oleo-para-banho-e-massagem-110ml-relaxante-01.jpg', 'img/produtos/by-samia-oleo-para-banho-e-massagem-110ml-relaxante-01.jpg', 'img/produtos/by-samia-oleo-para-banho-e-massagem-110ml-relaxante-02.jpg', 'img/produtos/by-samia-oleo-para-banho-e-massagem-110ml-relaxante-01.jpg', 'img/produtos/', '', '', 10, 98.02, 'Azul', '110ML', 'BY SAMIA', 'N', 'N'),
(125, 3, 'GRANADO SABONETE LÍQUIDO MÃOS E CORPO - 300ML', 'Formulado com pH da pele, glicerina vegetal e alta concentração de extrato natural de lavanda, que tem ação relaxante.', 'img/produtos/granado-sabonete-liquido-maos-e-corpo-300ml-lavanda-01.jpg', 'img/produtos/granado-sabonete-liquido-maos-e-corpo-300ml-lavanda-01.jpg', 'img/produtos/granado-sabonete-liquido-maos-e-corpo-300ml-lavanda-02.jpg', 'img/produtos/granado-sabonete-liquido-maos-e-corpo-300ml-lavanda-03.jpg', 'img/produtos/', '', '', 10, 26.5, 'Roxo', '300ML', 'GRANADO', 'N', 'N'),
(126, 4, 'THE BODY SHOP CREME DE MÃOS - 30ML', 'Creme para as mãos, com fragrância floral frutal moderna, que perfuma e hidrata a pele das mãos. Fórmula 100% vegana.', 'img/produtos/the-body-shop-creme-de-maos-30ml-choice-cool-01.jpg', 'img/produtos/the-body-shop-creme-de-maos-30ml-choice-cool-01.jpg', 'img/produtos/the-body-shop-creme-de-maos-30ml-choice-cool-02.jpg', 'img/produtos/the-body-shop-creme-de-maos-30ml-choice-cool-03.jpg', 'img/produtos/', '', '', 10, 25.9, 'Azul', '30ML', 'THE BODY SHOP', 'N', 'N'),
(127, 3, 'FEITO BRASIL SABONETE EM BARRA DOM TROPICAL - 80G', 'Uma nova experiência de limpeza e esfoliação! O Picolé de Graviola traz partículas naturais de esfoliação e a fragrância encantadora da Graviola para um momento de banho muito mais divertido!', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-graviola-01.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-graviola-01.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-graviola-02.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-graviola-03.jpg', 'img/produtos/', '', '', 10, 39, 'Verde', '80G', 'FEITO BRASIL', 'N', 'N'),
(128, 3, 'PHYSALIS SABONETE EM BARRA - 90G', 'A natureza esconde segredos fascinantes. Combinamos os poderes hidratantes e tonificantes da amora e do hibisco em uma fórmula suave e revigorante. Uma experiência reconfortante, sem exagero, só o essencial!', 'img/produtos/physalis-sabonete-em-barra-90g-hibiscus-e-amora-01.jpg', 'img/produtos/physalis-sabonete-em-barra-90g-hibiscus-e-amora-01.jpg', 'img/produtos/physalis-sabonete-em-barra-90g-hibiscus-e-amora-02.jpg', 'img/produtos/physalis-sabonete-em-barra-90g-hibiscus-e-amora-01.jpg', 'img/produtos/', '', '', 10, 14, 'Roxo', '90G', 'PHYSALIS', 'N', 'N'),
(129, 3, 'GRANADO SABONETE VINTAGE - 120G', 'No ano de celebração de seus 150 anos, a Granado lança uma fragrância para homenagear a cidade-berço de sua história. ', 'img/produtos/granado-sabonete-vintage-120g-bossa-01.jpg', 'img/produtos/granado-sabonete-vintage-120g-bossa-01.jpg', 'img/produtos/granado-sabonete-vintage-120g-bossa-02.jpg', 'img/produtos/granado-sabonete-vintage-120g-bossa-03.jpg', 'img/produtos/', '', '', 10, 10.5, 'Azul', '120G', 'GRANADO', 'N', 'N'),
(130, 3, 'GRANADO SABONETE LÍQUIDO MÃOS E CORPO - 300ML', ' Formulado com pH da pele, glicerina vegetal e alta concentração de extrato natural de lavanda, que tem ação relaxante.', 'img/produtos/granado-sabonete-liquido-maos-e-corpo-300ml-castanha-01.jpg', 'img/produtos/granado-sabonete-liquido-maos-e-corpo-300ml-castanha-01.jpg', 'img/produtos/granado-sabonete-liquido-maos-e-corpo-300ml-lavanda-02.jpg', 'img/produtos/granado-sabonete-liquido-maos-e-corpo-300ml-lavanda-03.jpg', 'img/produtos/', '', '', 10, 26.5, 'Amarelo', '300ML', 'GRANADO', 'N', 'N'),
(131, 4, 'SANTAPELE CREME HIDRATANTE MÃOS ALTA PERFORMANCE - 45G', 'O hidratante para mãos Alta Performance ananás e flor de ipê restaura e hidrata profundamente a pele. Possui ação antioxidante, estimula a produção de colágeno e elastina formando uma camada protetora natural sobre a pele.', 'img/produtos/santapele-creme-hidratante-maos-alta-performance-45g-ananas-e-flor-de-ipe-01.jpg', 'img/produtos/santapele-creme-hidratante-maos-alta-performance-45g-ananas-e-flor-de-ipe-01.jpg', 'img/produtos/santapele-creme-hidratante-maos-alta-performance-45g-ananas-e-flor-de-ipe-02.jpg', 'img/produtos/santapele-creme-hidratante-maos-alta-performance-45g-ananas-e-flor-de-ipe-01.jpg', 'img/produtos/', '', '', 10, 42, 'Amarelo', '45G', 'SANTAPELE', 'N', 'N'),
(132, 3, 'FAVO BEAUTY SABONETE LÍQUIDO CORPO E ROSTO - 250ML', 'O Sabonete Líquido Rosto e Corpo Favo Beauty teve sua fórmula cuidadosamente desenvolvida com extrato de mel, vitamina E e ativo prebiótico, responsáveis por limparem suavemente e promoverem a hidratação da pele, equilibrando o PH e estimulando a proteção natural da microbiota. Possui fragrância delicada. Uso diário.', 'img/produtos/favo-beauty-sabonete-liquido-corpo-e-rosto-250ml-neutra-01.jpg', 'img/produtos/favo-beauty-sabonete-liquido-corpo-e-rosto-250ml-neutra-01.jpg', 'img/produtos/favo-beauty-sabonete-liquido-corpo-e-rosto-250ml-neutra-02.jpg', 'img/produtos/favo-beauty-sabonete-liquido-corpo-e-rosto-250ml-neutra-03.jpg', 'img/produtos/', '', '', 10, 79, 'Laranja', '250ML', 'FAVO BEAUTY', 'N', 'N'),
(133, 3, 'FEITO BRASIL SABONETE EM BARRA DOM TROPICAL - 80G', 'Mais diversão no seu momento de banho! O Picolé de Maracujá promove uma limpeza suave e refrescante com partículas esfoliantes naturais que restauram a barreira da pele!', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-maracuja-01.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-maracuja-01.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-maracuja-02.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-maracuja-03.jpg', 'img/produtos/', '', '', 10, 39, 'Amarelo', '80G', 'FEITO BRASIL', 'N', 'N'),
(134, 3, 'FEITO BRASIL SABONETE EM BARRA DOM TROPICAL - 80G', 'Um banho de esfoliação com a leveza da natureza! O Picolé de Caju traz partículas de esfoliação naturais para promover um momento inesquecível e divertido de limpeza e esfoliação com a envolvente fragrância de Caju!', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-caju-01.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-caju-01.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-caju-02.jpg', 'img/produtos/feito-brasil-sabonete-em-barra-dom-tropical-80g-caju-03.jpg', 'img/produtos/', '', '', 10, 39, 'Laranja', '80G', 'FEITO BRASIL', 'N', 'N'),
(135, 4, 'L\'OCCITANE AU BRÉSIL CREME DE MÃOS - 30ML', 'ÁGUA DE COCO: Este creme de mãos de Água de Coco traz um toque macio e aveludado para a pele, deixando-a hidratada e perfumada com uma delicada fragrância aromática floral.', 'img/produtos/loccitane-au-bresil-creme-de-maos-30ml-agua-de-coco-01.jpg', 'img/produtos/loccitane-au-bresil-creme-de-maos-30ml-agua-de-coco-01.jpg', 'img/produtos/loccitane-au-bresil-creme-de-maos-30ml-agua-de-coco-02.jpg', 'img/produtos/a.jpg', 'img/produtos/', '', '', 10, 29.9, 'Laranja', '30 mL', 'L\'OCCITANE', 'N', 'N'),
(136, 1, 'L\'OCCITANE AU BRÉSIL ÓLEO PARA UNHAS E CUTÍCULAS MANDACARU - 7,5G', 'Com extrato concentrado de Mandacaru, este óleo para unhas da L’Occitane au Brésil com textura em gel proporciona uma aparência saudável para unhas e cutículas, deixando-as hidratadas e protegidas.', 'img/produtos/P2.jpg', 'img/produtos/P2.jpg', 'img/produtos/P1.jpg', 'img/produtos/P3.jpg', 'img/produtos/', '', '', 20, 39.9, 'Laranja', '7,5G', 'L\'OCCITANE', 'N', 'N'),
(137, 4, 'L\'OCCITANE AU BRÉSIL CREME DE MÃOS - 30ML', 'ÁGUA DE COCO: Este creme de mãos de Água de Coco traz um toque macio e aveludado para a pele, deixando-a hidratada e perfumada com uma delicada fragrância aromática floral.', 'img/produtos/capim1.jpg', 'img/produtos/capim1.jpg', 'img/produtos/capim2.jpg', 'img/produtos/capim3.jpg', 'img/produtos/', '', '', 15, 29.9, 'Verde', '30 mL', 'L\'OCCITANE', 'N', 'N'),
(138, 4, 'OCEANE HIDRATANTE LABIAL LIP BALM', 'Elaborado com agentes condicionantes como óleo de jojoba e óleo de baoba, este lip balm é o produto perfeito para manter os lábios hidratados e protegidos ao longo do dia.', 'img/produtos/boca1.jpg', 'img/produtos/boca1.jpg', 'img/produtos/boca2.jpg', 'img/produtos/boca3.jpg', 'img/produtos/', '', '', 14, 35, 'Verde', '5 G', 'OCEANE', 'N', 'N'),
(140, 3, 'OCEANE KIT ESPUMA DE LIMPEZA SET FOAMING SOAP', 'Para quem busca produtos práticos, perfumados e de quebra, que hidratam, o Foaming Soap Fresh Citrus chega com tudo. Sabonete líquido que vira espuma, possui propriedades bactericidas e é uma ótima opção para a higienização das mãos.', 'img/produtos/oceane.jpg', 'img/produtos/oceane.jpg', 'img/produtos/oceane1.jpg', 'img/produtos/oceane.jpg', 'img/produtos/', '', '', 15, 32, 'Verde', '270mL', 'OCEANE', 'N', 'N'),
(141, 4, 'OCEANE ESFOLIANTE CORPORAL - 75ML', 'FLORAL SUNRISE - Extratos Vegetais, com delicado perfume floral. Sua fragrância leve e feminina traz notas frescas de limão e transmite a sensação de flores recém-colhidas. Seu aroma desperta instantaneamente os sentidos - revitalizando mente e corpo.', 'img/produtos/produtinho1.jpg', 'img/produtos/produtinho1.jpg', 'img/produtos/creme.jpg', 'img/produtos/produtinho1.jpg', 'img/produtos/', '', '', 15, 34, 'Laranja', '75mL', 'OCEANE', 'N', 'N'),
(142, 4, 'OCEANE MÁSCARA FACIAL', 'ROMÃ E LIMÃO - Esta máscara de textura gel traz em sua composição extrato de romã e limão, potentes susbtânciias de ação antioxidante e iluminadora. Além de nutrir a pele, a máscara também promove uma esfoliação suave, estimulando a renovação celular e deixando-a com efeito iluminado!', 'img/produtos/mascara.jpg', 'img/produtos/mascara.jpg', 'img/produtos/mascara2.jpg', 'img/produtos/mascara.jpg', 'img/produtos/', '', '', 15, 49, 'Rosa', '75G', 'OCEANE', 'N', 'N');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipoproduto`
--

CREATE TABLE `tb_tipoproduto` (
  `idTipoProduto` int(11) NOT NULL,
  `Descricao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Descrição do tipo de produto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_tipoproduto`
--

INSERT INTO `tb_tipoproduto` (`idTipoProduto`, `Descricao`) VALUES
(1, 'Óleo'),
(2, 'Perfume'),
(3, 'Sabonete'),
(4, 'Creme');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipousuario`
--

CREATE TABLE `tb_tipousuario` (
  `idTipoUsuario` int(11) NOT NULL COMMENT 'PK - Código identificador do tipo de usuário',
  `Descricao` varchar(20) NOT NULL COMMENT 'Descrição do tipo de usuário'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_tipousuario`
--

INSERT INTO `tb_tipousuario` (`idTipoUsuario`, `Descricao`) VALUES
(1, 'Administrador'),
(2, 'Usuário');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `idUsuario` int(11) NOT NULL COMMENT 'PK - Código identificador do usuário',
  `idTipo` int(11) NOT NULL COMMENT 'FK - Código identificador do tipo de usuário',
  `Nome` varchar(140) NOT NULL COMMENT 'Nome do usuário',
  `Login` varchar(100) DEFAULT NULL COMMENT 'Login do usuário',
  `Senha` varchar(50) NOT NULL COMMENT 'Senha do usuário'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`idUsuario`, `idTipo`, `Nome`, `Login`, `Senha`) VALUES
(1, 1, 'Administrador', 'adm@louvera.com', '202cb962ac59075b964b07152d234b70'),
(2, 2, 'Usuário', 'user@louvera.com', '202cb962ac59075b964b07152d234b70');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_produto`
--
ALTER TABLE `tb_produto`
  ADD PRIMARY KEY (`idProduto`),
  ADD KEY `tb_TipoProduto_ibfk_1` (`idTipoProduto`);

--
-- Índices de tabela `tb_tipoproduto`
--
ALTER TABLE `tb_tipoproduto`
  ADD PRIMARY KEY (`idTipoProduto`);

--
-- Índices de tabela `tb_tipousuario`
--
ALTER TABLE `tb_tipousuario`
  ADD PRIMARY KEY (`idTipoUsuario`);

--
-- Índices de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idTipo` (`idTipo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_produto`
--
ALTER TABLE `tb_produto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT de tabela `tb_tipoproduto`
--
ALTER TABLE `tb_tipoproduto`
  MODIFY `idTipoProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_tipousuario`
--
ALTER TABLE `tb_tipousuario`
  MODIFY `idTipoUsuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK - Código identificador do tipo de usuário', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK - Código identificador do usuário', AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_produto`
--
ALTER TABLE `tb_produto`
  ADD CONSTRAINT `tb_TipoProduto_ibfk_1` FOREIGN KEY (`idTipoProduto`) REFERENCES `tb_tipoproduto` (`idTipoProduto`);

--
-- Restrições para tabelas `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD CONSTRAINT `tb_usuario_ibfk_1` FOREIGN KEY (`idTipo`) REFERENCES `tb_tipousuario` (`idTipoUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
