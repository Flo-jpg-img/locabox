-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 24 juin 2021 à 14:28
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
  `telephone_fixe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone_portable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ville` varchar(255) NOT NULL,
  `code_postal` varchar(5) NOT NULL,
  `n°SIRET` varchar(255) DEFAULT NULL,
  `denomination_social` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `mail`, `telephone_fixe`, `telephone_portable`, `ville`, `code_postal`, `n°SIRET`, `denomination_social`, `statut`) VALUES
(2, 'Adrienss', 'Olivier', 'charlotte.fernandez@example.org', '03 83 34 28 41', '', '+33 1 93 66 48 10', 'Godar', '67 06', '', 1),
(3, 'Franck', 'Roux', 'faivre.martin@example.com', '+33 5 67 43 29 51', '+33 (0)1 34 40 15 51', 'Meyer-la-Forêt', '14 26', '', '', 0),
(4, 'Michèle', 'Caron', 'michelle.dupont@example.com', '09 50 41 69 09', '0263061496', 'Clementdan', '51 54', '', '', 0),
(5, 'Jeanne', 'Delorme', 'ruiz.adrien@example.net', '+33 3 75 69 47 26', '+33 (0)7 74 13 77 31', 'Andre', '67 16', '', '', 0),
(6, 'Maurice', 'Berger', 'qnicolas@example.net', '0233427687', '+33 (0)8 18 81 04 72', 'Fabre', '91 31', '', '', 0),
(7, 'Christophe', 'Leconte', 'isaac79@example.org', '+33 (0)1 23 50 27 59', '01 44 60 10 74', 'Ferrand', '74357', '', '', 0),
(8, 'Patricia', 'Bouvet', 'patrick.lenoir@example.net', '04 96 52 66 91', '+33 (0)6 04 56 76 59', 'Bazin-sur-Andre', '21 33', '', '', 0),
(9, 'Laure', 'Perrier', 'aribeiro@example.net', '+33 (0)1 08 11 29 52', '+33 5 49 99 70 97', 'Schmitt', '74211', '', '', 0),
(10, 'Jeannine', 'Roux', 'herve.noemi@example.com', '+33 (0)1 30 71 22 37', '+33 4 07 00 22 43', 'Brunet', '66 13', '', '', 0),
(11, 'Inès', 'Michel', 'michel56@example.net', '08 91 60 72 85', '06 65 91 22 30', 'Pasquier', '61139', '', '', 0),
(12, 'Marianne', 'Lacombe', 'dasilva.marcelle@example.com', '+33 (0)8 22 22 93 19', '+33 1 17 92 91 95', 'Lemoine-sur-Carlier', '62 07', '', '', 0),
(13, 'Marcelle', 'Perrier', 'celine39@example.org', '+33 (0)1 91 50 83 54', '06 71 21 32 98', 'Roussel-sur-Bodin', '38881', '', '', 0),
(14, 'Adélaïde', 'Barre', 'vaillant.jerome@example.com', '+33 3 20 01 60 92', '0175297344', 'Dupre', '16 81', '', '', 0),
(15, 'Gilbert', 'Morvan', 'bgerard@example.org', '0270375949', '+33 4 39 56 56 92', 'Descamps', '30 54', '', '', 0),
(16, 'René', 'Lecoq', 'carlier.marc@example.org', '0450474251', '01 45 63 53 76', 'Poulain', '02 63', '', '', 0),
(17, 'Geneviève', 'Diaz', 'zacharie94@example.com', '+33 (0)9 17 64 30 02', '09 80 76 74 55', 'Bernier', '93 33', '', '', 0),
(18, 'Joséphine', 'Normand', 'yves.parent@example.com', '01 18 79 32 64', '+33 7 92 11 06 55', 'Fernandes', '89506', '', '', 0),
(19, 'Charles', 'Joubert', 'lambert.virginie@example.net', '0898195795', '03 14 16 36 19', 'BourgeoisBourg', '98787', '', '', 0),
(20, 'Adèle', 'Duval', 'gregoire.benard@example.org', '09 44 32 30 72', '+33 2 28 39 75 12', 'Boutin', '35 07', '', '', 0),
(21, 'Henriette', 'Boyer', 'bernard.vidal@example.org', '+33 1 89 15 04 52', '0249200801', 'Lecomte', '05 50', '', '', 0),
(22, 'Auguste', 'Lesage', 'rene.labbe@example.com', '+33 (0)5 89 74 87 90', '+33 (0)8 17 01 90 93', 'Traore', '67 96', '', '', 0),
(23, 'Guy', 'Gomes', 'tcarre@example.org', '0585027471', '+33 (0)3 26 32 95 36', 'Mercier-sur-Dijoux', '49 79', '', '', 0),
(24, 'Christiane', 'Potier', 'pineau.auguste@example.com', '+33 5 69 05 05 49', '+33 (0)4 24 59 51 21', 'Ollivier-sur-Payet', '25163', '', '', 0),
(25, 'Diane', 'Bourdon', 'humbert.marcelle@example.net', '+33 1 35 28 80 26', '07 39 03 74 40', 'Collet-sur-Mer', '76 65', '', '', 0),
(26, 'Margot', 'Pottier', 'valentine.vincent@example.net', '0671615832', '+33 4 37 56 90 35', 'Ruiz-les-Bains', '33 37', '', '', 0),
(27, 'Astrid', 'Goncalves', 'arthur76@example.org', '+33 (0)8 95 83 11 90', '+33 8 00 12 62 73', 'Neveu', '78 41', '', '', 0),
(28, 'Frédéric', 'Daniel', 'thomas02@example.net', '08 21 27 59 62', '+33 9 92 53 74 23', 'Briand', '67 23', '', '', 0),
(29, 'Guy', 'Masse', 'lambert.tristan@example.com', '01 62 22 44 05', '02 24 43 86 31', 'Ramos', '34688', '', '', 0),
(30, 'Sylvie', 'Jourdan', 'seguin.matthieu@example.net', '+33 1 17 95 68 69', '+33 7 87 67 76 25', 'Bouvier', '14 43', '', '', 0),
(31, 'André', 'Besson', 'colette34@example.com', '+33 (0)8 11 33 91 82', '+33 (0)1 51 41 86 30', 'Meyer', '26 35', '', '', 0),
(32, 'Rémy', 'Hardy', 'tessier.guy@example.net', '+33 9 52 69 59 47', '0367378945', 'Moulin', '08 03', '', '', 0),
(33, 'Emmanuel', 'Ferrand', 'pdupuis@example.org', '05 73 98 71 83', '08 91 04 48 53', 'Potiernec', '54 08', '', '', 0),
(34, 'Susanne', 'Pascal', 'lucas92@example.com', '+33 6 26 68 96 79', '01 97 84 53 97', 'Couturier', '09 96', '', '', 0),
(35, 'Renée', 'Descamps', 'fjacquot@example.net', '+33 6 96 41 23 55', '01 92 98 27 70', 'Piresboeuf', '55 15', '', '', 0),
(36, 'Paul', 'Ferrand', 'ebertrand@example.net', '+33 3 04 48 37 39', '0667237667', 'Coulon-sur-Chretien', '11842', '', '', 0),
(37, 'René', 'Morin', 'mathilde.begue@example.net', '+33 4 28 18 78 52', '+33 8 93 48 44 59', 'Lesage-sur-Ramos', '75 16', '', '', 0),
(38, 'Étienne', 'Klein', 'loiseau.alexandre@example.net', '+33 (0)2 08 10 86 26', '02 60 51 45 13', 'Bourdon', '01690', '', '', 0),
(39, 'Emmanuelle', 'Laurent', 'celine26@example.org', '01 29 04 40 09', '+33 (0)6 94 77 49 64', 'Ruiznec', '74 36', '', '', 0),
(40, 'Gérard', 'Bousquet', 'michel.leger@example.org', '0895942110', '0106899218', 'Guillot', '73578', '', '', 0),
(41, 'Diane', 'Lejeune', 'claude.dossantos@example.org', '0589452407', '+33 (0)2 20 91 40 49', 'Navarro-les-Bains', '22228', '', '', 0),
(42, 'Étienne', 'Petitjean', 'claude08@example.org', '0920857295', '+33 (0)3 43 77 31 56', 'Merle-sur-Mer', '98107', '', '', 0),
(43, 'Léon', 'Moreau', 'stephanie74@example.com', '0341138829', '+33 (0)6 53 75 92 43', 'Robin', '01226', '', '', 0),
(44, 'Madeleine', 'Descamps', 'elisabeth.wagner@example.org', '0349646967', '01 96 59 03 31', 'Bonnin', '59 54', '', '', 0),
(45, 'Yves', 'Didier', 'denis.tessier@example.com', '+33 2 78 82 50 71', '09 04 16 48 18', 'Blot-sur-Mer', '82 63', '', '', 0),
(46, 'Denise', 'Dumont', 'qdelmas@example.org', '+33 1 53 28 90 19', '+33 (0)9 73 85 60 00', 'Charles-les-Bains', '40 74', '', '', 0),
(47, 'Dominique', 'Fernandez', 'guy06@example.com', '+33 6 90 72 75 63', '0147754943', 'LelievreVille', '75633', '', '', 0),
(48, 'Guy', 'Louis', 'vincent.richard@example.org', '0979286206', '03 01 20 29 81', 'Leleu', '64 40', '', '', 0),
(49, 'Michèle', 'Pasquier', 'wdidier@example.org', '01 63 40 89 94', '+33 (0)4 63 42 17 63', 'Pinto', '32 38', '', '', 0),
(50, 'Denis', 'Evrard', 'stephane.charpentier@example.org', '+33 (0)1 04 22 79 66', '+33 5 70 71 26 10', 'Henry', '60997', '', '', 0),
(51, 'Laure', 'Vasseur', 'dvoisin@example.com', '0343732997', '+33 (0)9 69 54 19 57', 'Morin', '08 95', '', '', 0),
(52, 'Élisabeth', 'Pelletier', 'nlanglois@example.com', '+33 9 74 24 40 98', '0898336072', 'Toussaint-sur-Lejeune', '47 32', '', '', 0),
(53, 'Capucine', 'Grenier', 'valerie31@example.org', '0822008078', '0898577297', 'Meunier', '22776', '', '', 0),
(54, 'Marc', 'Humbert', 'marthe97@example.net', '+33 (0)6 32 08 09 24', '+33 2 03 83 00 24', 'Fleury', '28 94', '', '', 0),
(55, 'Adrienne', 'Martins', 'pruvost.benjamin@example.org', '+33 6 44 84 19 80', '+33 1 39 55 81 35', 'Rodrigues-la-Forêt', '79 57', '', '', 0),
(56, 'Marcelle', 'Delmas', 'emmanuelle28@example.com', '+33 (0)9 95 98 75 44', '05 78 85 31 29', 'Dupre', '38 72', '', '', 0),
(57, 'Thérèse', 'Labbe', 'georges32@example.com', '+33 (0)7 33 01 44 55', '04 99 76 67 61', 'Lebon', '35797', '', '', 0),
(58, 'Sébastien', 'Moreau', 'martin.renee@example.net', '+33 1 37 58 12 89', '+33 (0)9 52 55 49 00', 'Costa', '56581', '', '', 0),
(59, 'Michelle', 'Mallet', 'seguin.lorraine@example.net', '08 95 48 48 83', '+33 (0)1 50 99 82 18', 'Guyot-sur-Diaz', '27648', '', '', 0),
(60, 'Xavier', 'Meunier', 'lucie.blanchard@example.org', '08 25 61 21 72', '04 91 41 88 05', 'David-sur-Hoarau', '75425', '', '', 0),
(61, 'Adrienne', 'Pierre', 'frederic.alexandre@example.net', '+33 (0)1 72 11 67 05', '+33 1 89 05 61 73', 'Gillet', '25021', '', '', 0),
(62, 'Anne', 'Diaz', 'vmoulin@example.org', '0331527903', '0606698144', 'Da Costa', '09 82', '', '', 0),
(63, 'Caroline', 'Bruneau', 'lucy.guichard@example.net', '06 15 79 60 30', '+33 4 01 56 93 88', 'Blondel-la-Forêt', '37 26', '', '', 0),
(64, 'Paul', 'Dupuis', 'patrick03@example.org', '0898873991', '+33 1 20 50 74 82', 'Collin', '51 32', '', '', 0),
(65, 'Jérôme', 'Courtois', 'courtois.julien@example.net', '0169875287', '0168797798', 'Perrinboeuf', '51 63', '', '', 0),
(66, 'Denis', 'Vasseur', 'louis.payet@example.org', '03 75 65 28 23', '07 99 91 21 61', 'Bernier', '99813', '63496377012354', 'Rey', 0),
(67, 'Michel', 'Louis', 'yves.descamps@example.org', '+33 (0)9 70 12 08 98', '+33 6 52 19 91 32', 'Fournier', '80 70', '99281641426678', 'Masse Marchal S.A.R.L.', 0),
(68, 'Luc', 'Baron', 'dpereira@example.org', '+33 (0)9 93 70 50 89', '06 51 50 74 03', 'Gros', '46 27', '49440438525180', 'Pages Jacquot et Fils', 0),
(69, 'Thomas', 'Durand', 'maurice49@example.org', '+33 4 46 81 37 30', '+33 (0)8 05 21 04 27', 'Lucas', '57183', '96015050053396', 'Jacob S.A.R.L.', 0),
(70, 'Clémence', 'Bodin', 'marianne.chevallier@example.net', '+33 2 01 27 03 28', '04 56 63 14 64', 'Berthelot-sur-Nicolas', '13189', '85089518040097', 'Leleu', 0),
(71, 'Julien', 'Guilbert', 'rene.vasseur@example.org', '+33 (0)9 73 62 40 41', '+33 (0)1 72 15 55 87', 'Baudrydan', '15 16', '17967492303796', 'Lejeune Fernandes SARL', 0),
(72, 'Thomas', 'Sauvage', 'marcelle60@example.com', '03 98 72 30 04', '+33 4 99 71 24 95', 'Riou-sur-Ramos', '21238', '82358643528551', 'Caron', 0),
(73, 'Louis', 'Gauthier', 'benjamin26@example.org', '+33 (0)5 56 53 22 04', '+33 5 11 79 15 39', 'Adam', '68636', '96261530574739', 'Boyer', 0),
(74, 'Hugues', 'Coulon', 'francois96@example.org', '+33 8 04 81 59 87', '+33 (0)6 44 32 56 95', 'MorenoBourg', '56 03', '40649635606851', 'Turpin', 0),
(75, 'Capucine', 'Michel', 'vincent37@example.com', '0621334361', '0568272713', 'Valentin', '23690', '64014492912224', 'Germain', 0),
(76, 'Jacqueline', 'Auger', 'alphonse.prevost@example.com', '05 67 40 51 18', '06 41 31 88 73', 'Germain', '21227', '73552076175082', 'Lagarde', 0),
(77, 'Thibaut', 'Coulon', 'camille.foucher@example.net', '+33 1 21 31 37 54', '+33 (0)1 27 33 94 74', 'Huet-les-Bains', '90667', '67855399045611', 'Leger Da Silva SARL', 0),
(78, 'William', 'Germain', 'capucine.charrier@example.net', '+33 (0)1 39 63 52 40', '03 96 16 92 67', 'Lefort', '11753', '85724119959580', 'Potier SARL', 0),
(79, 'Nath', 'Alves', 'froussel@example.net', '+33 6 03 07 77 30', '+33 9 85 25 38 60', 'Roussetnec', '92 71', '12133554659432', 'Chartier', 0),
(80, 'Dominique', 'Raymond', 'noemi90@example.com', '0960865842', '0107919739', 'Besnard', '86546', '52166401903739', 'Vallee S.A.S.', 0),
(81, 'André', 'Laporte', 'hpoulain@example.com', '0518317919', '07 96 80 21 47', 'Jacob', '42764', '33971334797523', 'Mathieu SAS', 0),
(82, 'Gilles', 'Martin', 'fbesnard@example.org', '+33 (0)6 62 13 28 46', '+33 (0)4 20 81 23 31', 'Potier-sur-Chevalier', '55013', '42869930025491', 'Besnard Faure S.A.R.L.', 0),
(83, 'Camille', 'Dubois', 'simon.josette@example.org', '0498016100', '07 85 32 77 79', 'RaymondVille', '20938', '94170676872730', 'Besson', 0),
(84, 'Marcelle', 'Guilbert', 'andre63@example.com', '0698940852', '0660133371', 'Ruiz', '69 23', '20327446862380', 'Perez Jacques S.A.R.L.', 0),
(85, 'Maurice', 'Le Goff', 'aime36@example.net', '+33 (0)5 77 54 33 91', '+33 1 88 35 33 90', 'Charlesboeuf', '71193', '86737968725081', 'Chartier Alves et Fils', 0),
(86, 'Thierry', 'Roussel', 'herve.benjamin@example.com', '08 97 36 32 02', '+33 5 26 54 65 75', 'Bouvier', '27208', '87657423270292', 'Morel', 0),
(87, 'Marcelle', 'Daniel', 'daniel.adele@example.com', '+33 4 12 59 15 83', '02 52 96 80 00', 'GomezVille', '48 08', '67401420682389', 'Boyer', 0),
(88, 'Aurore', 'Goncalves', 'rroussel@example.net', '05 44 44 86 83', '+33 (0)6 94 83 03 92', 'Noel', '85 33', '35738471244650', 'De Oliveira', 0),
(89, 'Marcel', 'Dumont', 'hugues.coulon@example.org', '+33 (0)4 71 11 25 15', '+33 (0)3 08 80 10 13', 'Chretien-sur-Mer', '12 93', '71157831478264', 'Neveu', 0),
(90, 'Jacqueline', 'Wagner', 'baron.catherine@example.org', '+33 9 79 85 92 36', '01 32 10 26 73', 'Couturier', '18 10', '38272548686529', 'Launay et Fils', 0),
(91, 'Éric', 'Roussel', 'mherve@example.org', '0768871403', '+33 (0)5 06 55 31 99', 'Georges', '16 38', '70288074789185', 'Collet', 0),
(92, 'Antoine', 'Imbert', 'jeanne.roussel@example.org', '+33 (0)4 12 84 39 87', '+33 (0)9 80 57 48 03', 'Meunier', '98002', '17054162756720', 'Leduc Michaud SARL', 0),
(93, 'Joseph', 'Hebert', 'tdesousa@example.com', '+33 2 86 63 11 13', '+33 (0)1 88 20 48 47', 'Wagnerdan', '15188', '17866608834763', 'Renaud', 0),
(94, 'Yves', 'Turpin', 'djoubert@example.com', '+33 (0)4 65 28 85 23', '+33 (0)6 19 23 97 97', 'Renard', '55 63', '47033003279075', 'Benoit', 0),
(95, 'Emmanuelle', 'Navarro', 'allain.brigitte@example.net', '+33 8 92 90 61 39', '0898356784', 'Pottierdan', '24557', '47944348736536', 'Chevallier et Fils', 0),
(96, 'Antoine', 'Pruvost', 'laetitia.dupre@example.org', '+33 7 55 07 24 54', '0648773646', 'Pruvost', '05555', '39093815920866', 'Allard', 0),
(97, 'Constance', 'Gomes', 'pierre.pichon@example.com', '0898318874', '0815473217', 'Samson', '84 76', '42977976772458', 'Rolland', 0),
(98, 'Anne', 'Le Gall', 'georges20@example.com', '0198451951', '+33 (0)9 01 17 01 71', 'Pasquiernec', '90780', '28203033001567', 'Ruiz', 0),
(99, 'Manon', 'Voisin', 'colette.charles@example.com', '05 88 94 88 98', '+33 (0)1 36 50 12 24', 'Marechal', '32036', '61896596831221', 'Leclercq', 0),
(100, 'Maryse', 'Rousseau', 'orey@example.com', '+33 (0)1 69 59 77 98', '+33 1 97 17 01 38', 'Legendre-sur-Collin', '71134', '71712964346084', 'Adam S.A.S.', 0),
(101, 'flo', 'flo', 'yukyuky@yutktyku.com', '0205252', '5252525', 'salies', '64270', '', '', 0),
(118, 'Jeanne', 'Delorme', 'ruiz.adrien@example.net', '+33 3 75 69 47 26', '+33 (0)7 74 13 77 31', 'Andre', '67 16', '', '', 0),
(135, 'tttt', 'zfirierf', 'zfirierf@erger.fr', '05254254', '27522572', 'zfirierf', '25325', '725242', 'zfirierf', 0);

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
  ADD CONSTRAINT `id_client1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `id_location` FOREIGN KEY (`id_location`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `id_utilisateur1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `id_box` FOREIGN KEY (`id_box`) REFERENCES `box` (`id`),
  ADD CONSTRAINT `id_client` FOREIGN KEY (`id_client`) REFERENCES `box` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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
