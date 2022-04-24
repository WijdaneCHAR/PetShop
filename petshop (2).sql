-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 13 jan. 2022 à 20:55
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `petshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'vache'),
(2, 'Dogs'),
(3, 'Cats'),
(4, 'chèvre');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `nom` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_bin NOT NULL,
  `company` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `message` text COLLATE utf8mb4_bin NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`nom`, `email`, `phone`, `company`, `message`, `date`) VALUES
('wiij', 'wijdane@gmail.com', '0610163322', 'self', 'hello', '2021-12-28'),


-- --------------------------------------------------------

--
-- Structure de la table `myorder`
--

CREATE TABLE `myorder` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pet` int(11) NOT NULL,
  `qte` int(11) NOT NULL,
  `totalOrder` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `myorder`
--

INSERT INTO `myorder` (`id_order`, `id_user`, `id_pet`, `qte`, `totalOrder`) VALUES
(1, 3, 2, 0, 0),
(2, 2, 3, 0, 0),
(3, 1, 4, 0, 0),
(4, 3, 9, 0, 0),
(12, 3, 7, 0, 0),
(112, 2, 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `pet`
--

CREATE TABLE `pet` (
  `id_pet` int(11) NOT NULL,
  `description_pet` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `category_id` int(11) NOT NULL,
  `imgs_pet` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `status_pet` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `price_pet` double NOT NULL,
  `name_pet` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `special` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `new` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `pet`
--

INSERT INTO `pet` (`id_pet`, `description_pet`, `category_id`, `imgs_pet`, `status_pet`, `price_pet`, `name_pet`, `special`, `featured`, `new`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, 'vache.jpg', 'Free', 41, 'Pet9', 1, 1, 1),
(2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3, 'chat1.jpg', 'free', 10, 'Pet2', 1, 0, 1),
(3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3, 'micha.jpg', 'free', 40, 'Pet3', 0, 1, 0),
(5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2, 'boobi.jpg', 'free', 99, 'Pet5', 1, 0, 0),
(7, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3, 'noir.jpg', 'promo', 47, 'Pet7', 0, 1, 0),
(8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2, 'chien1.jpg', 'promo', 20, 'Pet8', 0, 1, 1),
(9, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2, 'rex1.jpg', 'Free', 52, 'pet7', 0, 1, 1),
(10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 4, 'chevres.png', 'Free', 47, 'pet11', 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `company` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `phone`, `company`, `address`) VALUES
(2, 'maasoudi', 'admin', 'maasoudi@gmail.com', '0610163322', 'UNKNOWN', 'no where'),
(3, 'charkaoui', 'passwd', 'wiijdanecharkaoui@gmail.com', '0650472288', 'UNKNOWN', 'no where'),
(4, 'boulouane', '123456', 'boulouaneimane@gmail.com', '0650472288', 'UNKNOWN', 'no where'),
(5, 'boumeshoul', 'azerty', 'boumeshoulhafida@gmail.com', '0650472288', 'UNKNOWN', 'no where'),
(15, 'elbou', '123456', 'test@gmail.com', '0610163322', 'SELF', 'darna');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Index pour la table `myorder`
--
ALTER TABLE `myorder`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pet` (`id_pet`);

--
-- Index pour la table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`id_pet`),
  ADD KEY `pet_ibfk_2` (`category_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `myorder`
--
ALTER TABLE `myorder`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `pet_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
