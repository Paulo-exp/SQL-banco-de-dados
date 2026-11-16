-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/11/2026 às 20:14
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
-- Banco de dados: `bd_escolar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id_aluno` int(11) NOT NULL,
  `nome_aluno` varchar(155) NOT NULL,
  `idade` int(11) NOT NULL,
  `email` varchar(155) NOT NULL,
  `telefone` varchar(97) NOT NULL,
  `Nome_Pais` varchar(155) NOT NULL,
  `serie_turma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionários`
--

CREATE TABLE `funcionários` (
  `id_funcionarios` int(11) NOT NULL,
  `nome_funcionarios` varchar(100) NOT NULL,
  `idade` int(255) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela professores`
--

CREATE TABLE `tabela professores` (
  `id_professor(a)` int(110) NOT NULL,
  `nome_profesor(a)` varchar(155) NOT NULL,
  `idade` int(155) NOT NULL,
  `matéria` varchar(155) NOT NULL,
  `email` varchar(155) NOT NULL,
  `telefone` int(97) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `serie_turma` int(11) NOT NULL,
  `qtd_alunos` int(11) NOT NULL,
  `nome_turma` varchar(155) NOT NULL,
  `turno` datetime NOT NULL,
  `carga_horaria/aula` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices de tabela `funcionários`
--
ALTER TABLE `funcionários`
  ADD PRIMARY KEY (`id_funcionarios`);

--
-- Índices de tabela `tabela professores`
--
ALTER TABLE `tabela professores`
  ADD PRIMARY KEY (`id_professor(a)`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`serie_turma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
