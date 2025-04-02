-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 02 avr. 2025 à 22:55
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdbac2020`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `Tel` varchar(8) NOT NULL,
  `Nom` varchar(25) NOT NULL,
  `Prenom` varchar(25) NOT NULL,
  `Adresse` varchar(100) NOT NULL,
  `MotPass` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`Tel`, `Nom`, `Prenom`, `Adresse`, `MotPass`) VALUES
('29565671', 'krayem', 'bahaeddine', 'Cité El Mahrajène', '123456'),
('29565673', 'krayem', 'bahaeddine', '', '123456'),
('29565675', 'krayem', 'bahaeddine', '', '654123');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `IdPizza` varchar(3) NOT NULL,
  `Tel` varchar(8) NOT NULL,
  `DateCmd` datetime NOT NULL,
  `QteCmd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`IdPizza`, `Tel`, `DateCmd`, `QteCmd`) VALUES
('Fmr', '29565671', '0000-00-00 00:00:00', 2),
('Fmr', '29565671', '2025-04-02 00:00:00', 2),
('Nap', '29565673', '0000-00-00 00:00:00', 2),
('Nap', '29565673', '2025-04-02 00:00:00', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pizza`
--

CREATE TABLE `pizza` (
  `IdPizza` varchar(3) NOT NULL,
  `NomPizza` varchar(30) NOT NULL,
  `Details` varchar(200) NOT NULL,
  `Prix` decimal(6,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pizza`
--

INSERT INTO `pizza` (`IdPizza`, `NomPizza`, `Details`, `Prix`) VALUES
('Fmr', 'Fruits de mer', 'Tomate, Mozzarella, Fruits de mer', 18.500),
('Mgh', 'Margherita', 'Tomate, Mozzarella, Basilic', 8.000),
('Nap', 'Napolitaine ', 'Tomate, Mozzarella, Thon, Anchois', 12.000),
('Nep', 'Neptune', 'Tomate, Mozzarella, Thon ', 10.500),
('Roy', 'Royale ', 'Tomate, Mozzarella, Jambon, Champignon', 14.500);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Tel`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`IdPizza`,`Tel`,`DateCmd`),
  ADD KEY `IdPizza` (`IdPizza`,`Tel`),
  ADD KEY `fh` (`Tel`);

--
-- Index pour la table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`IdPizza`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `fh` FOREIGN KEY (`Tel`) REFERENCES `client` (`Tel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk` FOREIGN KEY (`IdPizza`) REFERENCES `pizza` (`IdPizza`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
