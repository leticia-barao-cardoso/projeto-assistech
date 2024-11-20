-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/11/2024 às 00:20
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
-- Banco de dados: `loja`
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
(1, 1, 10000, '2024-11-20 19:58:58');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `idTipo` int(11) NOT NULL,
  `capa` varchar(255) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `valor` int(11) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `idTipo`, `capa`, `nome`, `valor`, `data`) VALUES
(10, 1, 'images/2024/11/2024-11-201732141781.jpg', 'Notebook ASUS VivoBook Go 15 E1504GA-NJ447 Intel Core i3 4GB RAM SSD 256GB 15,6\\&quot; Full HD Linux 90NB0ZT1-M00PS0', 3497, '2024-11-20 19:29:41'),
(11, 1, 'images/2024/11/2024-11-201732141819.jpg', 'Notebook Gamer Acer Nitro V15 Intel Core i5-13420H, 8GB RAM, 15.6\\&quot; FHD IPS 144Hz, Windows 11, Preto - ANV15-51-58AZ', 5100, '2024-11-20 19:30:19'),
(12, 3, 'images/2024/11/2024-11-201732141866.jpeg', 'KIT - Computador Smart Pc 80187 Intel Core i3 (4GB HD 1TB) + Monitor 18,5\\&quot; Linux0', 2697, '2024-11-20 19:31:06'),
(13, 3, 'images/2024/11/2024-11-201732141889.jpeg', 'Computador Completo Intel Core i5 8GB ssd 240GB Microsoft Windows 10 Monitor 19.5 3green', 1399, '2024-11-20 19:31:29'),
(14, 2, 'images/2024/11/2024-11-201732141923.jpg', 'CELULAR APPLE IPHONE 12 64GB PURPLE GRADE A+ AMERICANO', 2237, '2024-11-20 19:32:03'),
(15, 2, 'images/2024/11/2024-11-201732141950.png', 'Smartphone Samsung A23 5G 128GB 50MP MULTICAMERAS DUAL CHIP', 1835, '2024-11-20 19:32:30'),
(16, 4, 'images/2024/11/2024-11-201732142109.jpg', 'Tablet Samsung Galaxy Tab S6 Lite 64gb 4gb Ram Wifi Cor Cinza', 1642, '2024-11-20 19:35:09'),
(17, 4, 'images/2024/11/2024-11-201732142152.jpg', 'Tablet Samsung Galaxy Tab S9 FE+ Wifi 128GB 8GB RAM Tela Imersiva de 12.4\\&quot; Cinza', 2697, '2024-11-20 19:35:52'),
(18, 6, 'images/2024/11/2024-11-201732142223.jpg', 'Placa de vídeo Nvidia Asus TUF Gaming GeForce RTX 40 Series RTX 4090 TUF-RTX4090-O24G-GAMING 24GB', 10697, '2024-11-20 19:37:04'),
(19, 5, 'images/2024/11/2024-11-201732142316.jpg', 'Memória RAM 16GB para Dell Precision Workstation T3620 MT 2RX8 PC4-2400T DDR4 UDIMM 2400MHz', 2697, '2024-11-20 19:38:36'),
(20, 7, 'images/2024/11/2024-11-201732142338.jpg', 'HD 500GB SATA', 99, '2024-11-20 19:38:58');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
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
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
