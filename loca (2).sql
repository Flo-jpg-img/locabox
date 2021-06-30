-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 17 juin 2021 à 14:56
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `loca`
--

-- --------------------------------------------------------

--
-- Structure de la table `action`
--

DROP TABLE IF EXISTS `action`;
CREATE TABLE IF NOT EXISTS `action` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `action_utilisateur`
--

DROP TABLE IF EXISTS `action_utilisateur`;
CREATE TABLE IF NOT EXISTS `action_utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_action` datetime NOT NULL,
  `id_utilisateur` int NOT NULL,
  `id_actualite` int DEFAULT NULL,
  `id_action` int DEFAULT NULL,
  `id_client` int DEFAULT NULL,
  `id_box` int DEFAULT NULL,
  `id_location` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_location` (`id_location`),
  KEY `id_box1` (`id_box`),
  KEY `id_client1` (`id_client`),
  KEY `id_action` (`id_action`),
  KEY `id_actualite` (`id_actualite`),
  KEY `id_utilisateur1` (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

DROP TABLE IF EXISTS `actualite`;
CREATE TABLE IF NOT EXISTS `actualite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` varchar(255) NOT NULL,
  `date_de_creation` varchar(255) NOT NULL,
  `illustration` varchar(255) NOT NULL,
  `illustration_miniature` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `box`
--

DROP TABLE IF EXISTS `box`;
CREATE TABLE IF NOT EXISTS `box` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  `surface` double NOT NULL,
  `volume` double NOT NULL,
  `prix` double NOT NULL,
  `disponibilite` tinyint(1) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `box`
--

INSERT INTO `box` (`id`, `libelle`, `surface`, `volume`, `prix`, `disponibilite`, `statut`) VALUES
(1, 'libelle', 0, 0, 0, 0, 0),
(2, 'A01', 3, 8, 65, 0, 0),
(3, 'A02', 13, 30, 170, 0, 0),
(4, 'A03', 12, 26, 155, 0, 0),
(5, 'A04', 11, 25, 146, 0, 0),
(6, 'A05', 12, 28, 160, 0, 0),
(7, 'A06', 13, 30, 174, 0, 0),
(8, 'A07', 13, 28, 165, 0, 0),
(9, 'A08', 14, 31, 179, 0, 0),
(10, 'A09', 13, 30, 174, 0, 0),
(11, 'A10', 13, 30, 174, 0, 0),
(12, 'A11', 7, 12, 89, 0, 0),
(13, 'A12', 4, 5, 49, 0, 0),
(14, 'A13', 4, 5, 49, 0, 0),
(15, 'A14', 5, 7, 65, 0, 0),
(16, 'A15', 10, 17, 119, 0, 0),
(17, 'A16', 10, 17, 119, 0, 0),
(18, 'A17', 6, 11, 85, 0, 0),
(19, 'A18', 6, 11, 85, 0, 0),
(20, 'A19', 5, 8, 69, 0, 0),
(21, 'A20', 5, 9, 75, 0, 0),
(22, 'A21', 5, 8, 69, 0, 0),
(23, 'A22', 13, 32, 185, 0, 0),
(24, 'A23', 12, 30, 174, 0, 0),
(25, 'A24', 7, 48, 119, 0, 0),
(26, 'A25', 13, 48, 179, 0, 0),
(27, 'A26', 12, 30, 174, 0, 0),
(28, 'A27', 7, 48, 119, 0, 0),
(29, 'A28', 13, 48, 179, 0, 0),
(30, 'A29', 13, 32, 185, 0, 0),
(31, 'A30', 13, 31, 179, 0, 0),
(32, 'A31', 13, 52, 179, 0, 0),
(33, 'A32', 9, 52, 138, 0, 0),
(34, 'A33', 8, 19, 128, 0, 0),
(35, 'A34', 13, 32, 185, 0, 0),
(36, 'A35', 4, 9, 75, 0, 0),
(37, 'A36', 8, 21, 130, 0, 0),
(38, 'A37', 9, 22, 138, 0, 0),
(39, 'A38', 10, 24, 146, 0, 0),
(40, 'A39', 11, 27, 160, 0, 0),
(41, 'A40', 11, 25, 150, 0, 0),
(42, 'A41', 11, 25, 150, 0, 0),
(43, 'A42', 7, 18, 125, 0, 0),
(44, 'A43', 8, 19, 128, 0, 0),
(45, 'A44', 8, 20, 130, 0, 0),
(46, 'A45', 9, 22, 138, 0, 0),
(47, 'A46', 9, 22, 138, 0, 0),
(48, 'A47', 9, 22, 138, 0, 0),
(49, 'A48', 14, 34, 193, 0, 0),
(50, 'A49', 6, 15, 99, 0, 0),
(51, 'A50', 11, 22, 138, 0, 0),
(52, 'B01', 6, 12, 89, 0, 0),
(53, 'B02', 3.5, 7, 65, 0, 0),
(54, 'B03', 3.5, 7, 65, 0, 0),
(55, 'B04', 3.5, 7, 65, 0, 0),
(56, 'B05', 3, 7, 65, 0, 0),
(57, 'B06', 3, 7, 65, 0, 0),
(58, 'B07', 3, 7, 65, 0, 0),
(59, 'B08', 3, 7, 65, 0, 0),
(60, 'B09', 3, 7, 65, 0, 0),
(61, 'B10', 3, 7, 65, 0, 0),
(62, 'B11', 5, 10, 79, 0, 0),
(63, 'B12', 4, 9, 75, 0, 0),
(64, 'B13', 4, 9, 75, 0, 0),
(65, 'B14', 4, 9, 75, 0, 0),
(66, 'B15', 8, 15, 99, 0, 0),
(67, 'B16', 4, 11, 85, 0, 0),
(68, 'B17', 3, 8, 69, 0, 0),
(69, 'B18', 4, 11, 85, 0, 0),
(70, 'B19', 4, 10, 79, 0, 0),
(71, 'B20', 4, 10, 79, 0, 0),
(72, 'B21', 4, 10, 79, 0, 0),
(73, 'B22', 4, 10, 79, 0, 0),
(74, 'B23', 3.5, 7, 65, 0, 0),
(75, 'B24', 3.5, 7, 65, 0, 0),
(76, 'B25', 3.5, 7, 65, 0, 0),
(77, 'B26', 3.5, 9, 75, 0, 0),
(78, 'B27', 3.5, 7, 65, 0, 0),
(79, 'B28', 5, 11, 85, 0, 0),
(80, 'B29', 7, 15, 99, 0, 0),
(81, 'B30', 7, 15, 99, 0, 0),
(82, 'B31', 7, 15, 109, 0, 0),
(83, 'B32', 7, 15, 109, 0, 0),
(84, 'B33', 7, 15, 109, 0, 0),
(85, 'B34', 7, 15, 109, 0, 0),
(86, 'B35', 7, 15, 109, 0, 0),
(87, 'B36', 3, 8, 69, 0, 0),
(88, 'B37', 5, 12, 89, 0, 0),
(89, 'B38', 3.15, 9, 75, 0, 0),
(90, 'B39', 3.15, 9, 75, 0, 0),
(91, 'B40', 3.15, 9, 75, 0, 0),
(92, 'B41', 3.15, 9, 75, 0, 0),
(93, 'B42', 3.15, 9, 75, 0, 0),
(94, 'B43', 3.15, 9, 75, 0, 0),
(95, 'B44', 3.15, 9, 75, 0, 0),
(96, 'B45', 3.15, 7, 65, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `telephone_fixe` varchar(255) DEFAULT NULL,
  `telephone_potable` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `code_postal` varchar(5) NOT NULL,
  `n°SIRET` int DEFAULT NULL,
  `denomination_social` varchar(255) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `objet` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contrat` varchar(255) NOT NULL,
  `date_de_debut` datetime NOT NULL,
  `date_de_fin` datetime NOT NULL,
  `statut` tinyint(1) NOT NULL,
  `id_client` int NOT NULL,
  `id_box` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_box` (`id_box`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `objet`
--

DROP TABLE IF EXISTS `objet`;
CREATE TABLE IF NOT EXISTS `objet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  `surface` double NOT NULL,
  `volume` double NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `objet`
--

INSERT INTO `objet` (`id`, `libelle`, `surface`, `volume`, `image`, `statut`) VALUES
(1, 'Canape 1 places', 0.4, 1.25, '', 0),
(2, 'Canape 3 places', 0.5, 1.5, '', 0),
(3, 'Canape d angle', 0.95, 2.8, '', 0),
(4, 'Fauteuil', 0.2, 0.65, NULL, 0),
(5, 'Table basse', 0.15, 0.4, '', 0),
(6, 'Bibliotheque', 0.15, 0.4, NULL, 0),
(7, 'Meuble TV', 0.6, 1.8, '', 0),
(8, 'Banc TV', 0.1, 0.3, '', 0),
(9, 'Television', 0.1, 0.25, NULL, 0),
(10, 'Lampe', 0.05, 0.15, NULL, 0),
(11, 'Table', 0.35, 1.1, NULL, 0),
(12, 'Chaise', 0.1, 0.3, NULL, 0),
(13, 'Tabouret', 0.05, 0.05, NULL, 0),
(14, 'Chaise haute', 0.1, 0.25, '', 0),
(15, 'Buffet', 0.2, 0.6, NULL, 0),
(16, 'Refrigerateur', 0.2, 0.55, NULL, 0),
(17, 'Congelateur', 0.25, 0.8, NULL, 0),
(18, 'Refrigerateur Congelateur', 0.2, 0.65, '', 0),
(19, 'Lave vaiselle', 0.1, 0.35, '', 0),
(20, 'Cuisiniere', 0.1, 0.3, NULL, 0),
(21, 'Micro ondes', 0.05, 0.1, '', 0),
(22, 'Poubelle', 0.05, 0.15, NULL, 0),
(23, 'Lit double', 0.45, 1.3, '', 0),
(24, 'Lit simple', 0.4, 1.25, '', 0),
(25, 'Matelas double', 0.2, 0.65, '', 0),
(26, 'Matelas simple', 0.15, 0.4, '', 0),
(27, 'Armoire', 0.6, 1.85, NULL, 0),
(28, 'Armoire avec penderie', 1.2, 3.65, '', 0),
(29, 'Table de chevet', 0.05, 0.15, '', 0),
(30, 'Commode', 0.15, 0.45, NULL, 0),
(31, 'Mirroir', 0.05, 0.15, NULL, 0),
(32, 'Coiffeuse', 0.2, 0.65, NULL, 0),
(33, 'Tapis', 0.1, 0.35, NULL, 0),
(34, 'Table à langer', 0.1, 0.25, '', 0),
(35, 'Lit bebe', 0.15, 0.45, '', 0),
(36, 'Lit enfant', 0.2, 0.6, '', 0),
(37, 'Lit superpose', 0.7, 2.15, '', 0),
(38, 'Table enfant', 0.05, 0.15, '', 0),
(39, 'Chaise enfant', 0, 0.05, '', 0),
(40, 'Bureau enfant', 0.1, 0.3, '', 0),
(41, 'Chaise bureau enfant', 0.05, 0.2, '', 0),
(42, 'Coffre a jouets', 0.05, 0.15, '', 0),
(43, 'Bureau', 0.15, 0.45, NULL, 0),
(44, 'Chaise bureau', 0.15, 0.4, '', 0),
(45, 'Bloc tiroirs', 0.15, 0.4, '', 0),
(46, 'Armoire à dossiers', 0.5, 1.5, '', 0),
(47, 'Lave linge', 0.1, 0.3, '', 0),
(48, 'Seche linge', 0.1, 0.3, '', 0),
(49, 'Sechoir', 0.1, 0.25, NULL, 0),
(50, 'Table à repasser', 0.05, 0.1, '', 0),
(51, 'Etagere à chaussures', 0.05, 0.2, '', 0),
(52, 'Etabli', 0.2, 0.55, NULL, 0),
(53, 'Boite à outils', 0.05, 0.1, '', 0),
(54, 'Echelle', 0.1, 0.25, NULL, 0),
(55, 'Valise', 0.05, 0.2, NULL, 0),
(56, 'Table de jardin', 0.45, 1.3, '', 0),
(57, 'Chaise de jardin', 0.2, 0.65, '', 0),
(58, 'Banc', 0.3, 0.9, NULL, 0),
(59, 'Parasol', 0.05, 0.2, NULL, 0),
(60, 'Tondeuse', 0.1, 0.3, NULL, 0),
(61, 'Barbecue', 0.05, 0.2, NULL, 0),
(62, 'Velo adulte', 0.15, 0.4, '', 0),
(63, 'Velo enfant', 0.1, 0.25, '', 0),
(64, 'Outils de jardin', 0.05, 0.2, '', 0),
(65, 'Petit carton', 0, 0.05, '', 0),
(66, 'Carton moyen', 0.05, 0.1, '', 0),
(67, 'Grand_carton', 0.05, 0.15, NULL, 0),
(68, 'Canape 2 places', 0, 0, '', 0),
(69, '', 0, 0, '', 1),
(70, 'ededzedzed', 25, 25, '2', 1),
(71, 'rzfefr', 25, 2, '2', 1),
(72, '2222', 2, 2, '2', 1),
(73, 'dddddddddddd', 25, 25, '2', 1),
(74, 'zdzdzezedfze', 25, 25, '25', 1),
(75, 'ssssssss', 0, 0, '', 1),
(76, 'ddd', 0, 0, '', 1),
(77, 'ddddddddddddddddddddddddddddddddddddd', 0, 0, '', 1),
(78, 'ss', 0, 0, '', 1),
(79, 'ssd', 0, 0, '', 1),
(80, 'eefezfzf', 25, 25, '2', 0),
(81, 'dde', 52, 5, '5', 0),
(82, 'moi', 25, 25, '', 0),
(83, 'pas moi', 3, 3, '', 0),
(84, 'zerferfrfrfrfrfrfrf', 0, 0, '', 1),
(85, 'zefzefzeferrrr', 0, 0, '', 1),
(86, 'erfe', 0, 0, '', 1),
(87, 'eeeeeeeeeeeee', 45, 4, '4', 0),
(88, 'sssssddccxcx', 0, 0, '', 0),
(89, 'ffrfrf', 0, 0, '', 0),
(90, 'hfjkfv', 2, 2, '2', 0),
(91, 'erferrrrrrrr', 0, 0, '0', 0),
(92, 'ddedede', 0, 0, '', 0),
(93, 'ooooooooooooo', 2, 52, '2', 0),
(94, 'fffff', 25, 25, '2', 0),
(95, 'eargfergergerg', 0, 0, '', 0),
(96, 'efdffffffffffff', 25, 2, '2', 0),
(97, 'rthrhrth', 0, 0, '', 0),
(98, 'frfrferfffffff', 25, 0, '', 0),
(99, 'eggtg', 0, 0, '', 0),
(100, 'ffffffffff', 0, 0, '', 0),
(101, 'gmlphj', 0, 0, '', 0),
(102, 'zrfrrrrrrr', 0, 0, '', 0),
(103, 'ggggggggggggg', 0, 0, '', 0),
(104, 'bbbbbbbbb', 0, 0, '', 0),
(105, 'chaisssee', 25, 25, '1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `objet_piece`
--

DROP TABLE IF EXISTS `objet_piece`;
CREATE TABLE IF NOT EXISTS `objet_piece` (
  `id_piece` int NOT NULL,
  `id_objet` int NOT NULL,
  KEY `id_objet` (`id_objet`),
  KEY `id_piece` (`id_piece`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `objet_piece`
--

INSERT INTO `objet_piece` (`id_piece`, `id_objet`) VALUES
(1, 1),
(6, 81),
(3, 82),
(3, 83),
(6, 84),
(2, 92),
(1, 104),
(2, 104),
(3, 104),
(1, 105),
(2, 105),
(3, 105);

-- --------------------------------------------------------

--
-- Structure de la table `piece`
--

DROP TABLE IF EXISTS `piece`;
CREATE TABLE IF NOT EXISTS `piece` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `piece`
--

INSERT INTO `piece` (`id`, `libelle`, `statut`) VALUES
(1, 'salon', 0),
(2, 'cuisine', 0),
(3, 'chambre adultes', 0),
(4, 'chambres enfants', 0),
(5, 'salle eau', 0),
(6, 'jardin', 0);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `libelle`, `statut`) VALUES
(1, 'admin', 1),
(2, 'super-admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `role_utilisateur`
--

DROP TABLE IF EXISTS `role_utilisateur`;
CREATE TABLE IF NOT EXISTS `role_utilisateur` (
  `id_utilisateur` int NOT NULL,
  `id_role` int NOT NULL,
  KEY `id_utilisateur` (`id_utilisateur`),
  KEY `id_role` (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `role_utilisateur`
--

INSERT INTO `role_utilisateur` (`id_utilisateur`, `id_role`) VALUES
(2, 2),
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `pseudo`, `mot_de_passe`, `mail`, `statut`) VALUES
(1, 'flo', 'rent', 'xxrhtrh', 'xxxzsdgrth', 'rhrh', 1),
(2, 'rhrh', 'rthrhrth', 'rhtr', 'htrh', 'rh', 1),
(3, 'etche', 'flo', 'flotor', '$2y$10$iEZFf8s5RouxJnIdf.Tw0.HO5/WcNdPL89tRmz0MNCUY4hMaRdBjG', 'etchecoparflorent@gmail.com', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `action_utilisateur`
--
ALTER TABLE `action_utilisateur`
  ADD CONSTRAINT `id_action` FOREIGN KEY (`id_action`) REFERENCES `action` (`id`),
  ADD CONSTRAINT `id_actualite` FOREIGN KEY (`id_actualite`) REFERENCES `actualite` (`id`),
  ADD CONSTRAINT `id_box1` FOREIGN KEY (`id_box`) REFERENCES `box` (`id`),
  ADD CONSTRAINT `id_client1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `id_location` FOREIGN KEY (`id_location`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `id_utilisateur1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `id_box` FOREIGN KEY (`id_box`) REFERENCES `box` (`id`),
  ADD CONSTRAINT `id_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `objet_piece`
--
ALTER TABLE `objet_piece`
  ADD CONSTRAINT `id_objet` FOREIGN KEY (`id_objet`) REFERENCES `objet` (`id`),
  ADD CONSTRAINT `id_piece` FOREIGN KEY (`id_piece`) REFERENCES `piece` (`id`);

--
-- Contraintes pour la table `role_utilisateur`
--
ALTER TABLE `role_utilisateur`
  ADD CONSTRAINT `id_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
