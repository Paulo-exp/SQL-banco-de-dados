-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31/08/2026 às 21:39
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
-- Banco de dados: `bdpaulo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela de estoque`
--

CREATE TABLE `tabela de estoque` (
  `Código do Estoque` int(20) NOT NULL,
  `código produto` int(11) NOT NULL,
  `Quantidade Disponivel` int(11) NOT NULL,
  `Localização no Armazém` int(11) NOT NULL,
  `Data Da Ultima Atualização` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela_de_clientes`
--

CREATE TABLE `tabela_de_clientes` (
  `id` int(11) NOT NULL,
  `Nome Completo` text NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `E-mail` varchar(150) NOT NULL,
  `Telefone` varchar(20) NOT NULL,
  `Data de nascimento` datetime NOT NULL,
  `Endereço` text NOT NULL,
  `Cidade` text NOT NULL,
  `Estado` text NOT NULL,
  `Data de cadastro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela_de_produtos`
--

CREATE TABLE `tabela_de_produtos` (
  `código produto` int(11) NOT NULL,
  `Nome produto` text NOT NULL,
  `Descrição` text NOT NULL,
  `Preço unitário` decimal(10,0) NOT NULL,
  `Categoria` text NOT NULL,
  `Marca` text NOT NULL,
  `Data de Fabricação` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tabela de estoque`
--
ALTER TABLE `tabela de estoque`
  ADD PRIMARY KEY (`Código do Estoque`);

--
-- Índices de tabela `tabela_de_clientes`
--
ALTER TABLE `tabela_de_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tabela_de_produtos`
--
ALTER TABLE `tabela_de_produtos`
  ADD PRIMARY KEY (`código produto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
