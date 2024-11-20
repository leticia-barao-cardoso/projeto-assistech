-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/11/2024 às 00:19
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetoassistech`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carrinho`
--

INSERT INTO `carrinho` (`id`, `id_produto`, `valor`, `data`) VALUES
(1, 2, 3497, '2024-11-21 00:04:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idtipo` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `equipamentos`
--

INSERT INTO `equipamentos` (`id`, `idtipo`, `titulo`, `img`, `preco`) VALUES
(2, 1, 'Notebook ASUS VivoBook Go 15 E1504GA-NJ447 Intel Core i3 4GB RAM SSD 256GB 15,6\" Full HD Linux 90NB0ZT1-M00PS0', 'imagens/notebook.jpg', 3497.9),
(3, 1, 'Notebook Gamer Acer Nitro V15 Intel Core i5-13420H, 8GB RAM, 15.6\" FHD IPS 144Hz, Windows 11, Preto - ANV15-51-58AZ', 'imagens/notebook01.jpg', 5100.9),
(4, 3, 'KIT - Computador Smart Pc 80187 Intel Core i3 (4GB HD 1TB) + Monitor 18,5\" Linux0', 'imagens/computador.jpeg', 2697.9),
(5, 3, 'Computador Completo Intel Core i5 8GB ssd 240GB Microsoft Windows 10 Monitor 19.5 3green', 'imagens/computador01.jpeg', 1399.9),
(6, 2, 'CELULAR APPLE IPHONE 12 64GB PURPLE GRADE A+ AMRICANO', 'imagens/celular.jpg', 2237.9),
(7, 2, 'Smartphone Samsung A23 5G 128GB 50MP MULTICAMERAS DUAL CHIP', 'imagens/celular01.png', 1835.9),
(8, 4, 'Tablet Samsung Galaxy Tab S6 Lite 64gb 4gb Ram Wifi Cor Cinza', 'imagens/tablet.webp', 1642.99),
(9, 4, 'Tablet Samsung Galaxy Tab S9 FE+ Wifi 128GB 8GB RAM Tela Imersiva de 12.4\" Cinza', 'imagens/tablet01.png', 2697.9),
(10, 6, 'Placa de vídeo Nvidia Asus TUF Gaming GeForce RTX 40 Series RTX 4090 TUF-RTX4090-O24G-GAMING 24GB', 'imagens/placa_de_video.webp', 10697.9),
(11, 5, 'Memória RAM 16GB para Dell Precision Workstation T3620 MT 2RX8 PC4-2400T DDR4 UDIMM 2400MHz', 'imagens/memoria_ram.webp', 2697.9),
(12, 7, 'HD 500GB SATA', 'imagens/hd.jpg', 99.9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipos`
--

CREATE TABLE `tipos` (
  `id` int(10) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipos`
--

INSERT INTO `tipos` (`id`, `nome`) VALUES
(1, 'Notebook'),
(2, 'Celular'),
(3, 'Computador'),
(4, 'Tablet'),
(5, 'Memoria RAM'),
(6, 'Placa de video'),
(7, 'HD');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Teste` (`idtipo`);

--
-- Índices de tabela `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD CONSTRAINT `Teste` FOREIGN KEY (`idtipo`) REFERENCES `tipos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
