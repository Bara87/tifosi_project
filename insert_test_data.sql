-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 22 août 2024 à 18:57
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

--
-- Déchargement des données de la table `achete`
--

INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES
(1, 1, '2024-08-19'),
(1, 2, '2024-08-22'),
(2, 2, '2024-08-20'),
(2, 3, '2024-08-23'),
(3, 3, '2024-08-21');

--
-- Déchargement des données de la table `appartient`
--

INSERT INTO `appartient` (`id_boisson`, `id_marque`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(12, 2),
(10, 3),
(11, 3),
(6, 4),
(7, 4),
(8, 4),
(9, 4);

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 4),
(7, 'Pepsi Max Zéro', 4),
(8, 'Lipton zéro citron', 4),
(9, 'Lipton Peach', 4),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source', 2);

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES
(1, 'Alice Dupont', 30, 75001),
(2, 'Bob Martin', 45, 69002),
(3, 'Charlie Dubois', 29, 33000),
(4, 'Diana Lefevre', 35, 75015),
(5, 'Eve Bernard', 40, 59000);

--
-- Déchargement des données de la table `comprend`
--

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(1, 1),
(1, 3),
(1, 5),
(1, 7),
(1, 9),
(1, 13),
(1, 16),
(1, 18),
(1, 20),
(2, 1),
(2, 5),
(2, 7),
(2, 9),
(2, 11),
(2, 16),
(2, 18),
(2, 20),
(3, 1),
(3, 5),
(3, 7),
(3, 9),
(3, 18),
(3, 20),
(3, 22),
(4, 6),
(4, 7),
(4, 9),
(4, 10),
(4, 15),
(4, 18),
(4, 20),
(5, 5),
(5, 7),
(5, 9),
(5, 12),
(5, 16),
(5, 17),
(5, 18),
(5, 20),
(6, 2),
(6, 4),
(6, 5),
(6, 9),
(6, 16),
(6, 18),
(6, 19),
(6, 20),
(7, 4),
(7, 5),
(7, 9),
(7, 16),
(7, 18),
(7, 20),
(7, 21),
(8, 1),
(8, 3),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 13),
(8, 14),
(8, 16),
(8, 18),
(8, 20),
(8, 21);

--
-- Déchargement des données de la table `est_constituee`
--

INSERT INTO `est_constituee` (`id_focaccia`, `id_menu`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES
(1, 'Mozaccia', 9.8),
(2, 'Gorgonzollaccia', 10.8),
(3, 'Raclaccia', 8.9),
(4, 'Emmentalaccia', 9.8),
(5, 'Tradizione', 8.9),
(6, 'Hawaienne', 11.2),
(7, 'Américaine', 10.8),
(8, 'Paysanne', 12.8);

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chevre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise');

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`) VALUES
(1, 'Menu1', NULL),
(2, 'Menu2', NULL),
(3, 'Menu3', NULL),
(4, 'Menu4', NULL),
(5, 'Menu5', NULL);

--
-- Déchargement des données de la table `paye`
--

INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES
(1, 1, '2024-08-19'),
(1, 2, '2024-08-22'),
(2, 2, '2024-08-20'),
(2, 3, '2024-08-23'),
(3, 3, '2024-08-21');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
