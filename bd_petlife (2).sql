-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/10/2026 às 19:57
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
-- Banco de dados: `bd`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pets`
--

CREATE TABLE `tb_pets` (
  `id_pet` int(11) NOT NULL,
  `nome do pet` varchar(50) NOT NULL,
  `especie` varchar(30) NOT NULL,
  `raca` varchar(30) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_pets`
--

INSERT INTO `tb_pets` (`id_pet`, `nome do pet`, `especie`, `raca`, `id_cliente`) VALUES
(6868, 'Thor', 'Cão', 'Golden Retriever', 6767);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_clientes`
--

CREATE TABLE `td_clientes` (
  `id_clientes` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `td_clientes`
--

INSERT INTO `td_clientes` (`id_clientes`, `nome`, `telefone`, `email`) VALUES
(6767, 'Carlos Souza', '(11) 98888-7777', 'carlos@email.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_pets`
--
ALTER TABLE `tb_pets`
  ADD PRIMARY KEY (`id_pet`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices de tabela `td_clientes`
--
ALTER TABLE `td_clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_pets`
--
ALTER TABLE `tb_pets`
  MODIFY `id_pet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6869;

--
-- AUTO_INCREMENT de tabela `td_clientes`
--
ALTER TABLE `td_clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6772;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_pets`
--
ALTER TABLE `tb_pets`
  ADD CONSTRAINT `tb_pets_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `td_clientes` (`id_clientes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
