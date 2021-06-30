-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 22 juin 2021 à 16:05
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

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
(102, 'fgfgfdg', 'dfgdfg', '', '', '', '', '', '', '', 1),
(103, 'sss', '', '', '', '', '', '', '', '', 1),
(104, 'ddddddddd', 'dddddddddddddd', 'ddddddddddddddd@uj.fr', '', '', '', '', '', '', 0),
(105, 'ddddddddd', 'dddddddddddddd', 'ddddddddddddddd@uj.fr', '', '', '', '', '', '', 0),
(106, 'dgdf', 'dfgdfg', 'gdgd@ghjgh.fr', '', '', '', '', '', '', 0),
(107, 'dgdf', 'dfgdfg', 'gdgd@ghjgh.fr', '', '', '', '', '', '', 0),
(108, 'dgdf', 'dfgdfg', 'gdgd@ghjgh.fr', '', '', '', '', '', '', 0),
(109, 'dgdf', 'dfgdfg', 'gdgd@ghjgh.fr', '', '', '', '', '', '', 0),
(110, 'dgdf', 'dfgdfg', 'gdgd@ghjgh.fr', '0525', '5252', '', '', '', '', 0),
(111, 'dgdf', 'dfgdfg', 'gdgd@ghjgh.fr', '0525', '5252', '', '', '', '', 0),
(112, 'dgdf', 'dfgdfg', 'gdgd@ghjgh.fr', '0525', '5252', '', '', '', '', 0),
(113, 'dgdf', 'dfgdfg', 'gdgd@ghjgh.fr', '0525', '5252', '', '', '', '', 0),
(114, 'dgdf', 'dfgdfg', 'gdgd@ghjgh.fr', '0525', '5252', '', '', '', '', 0),
(115, 'dgdf', 'dfgdfg', 'gdgd@ghjgh.fr', '0525', '5252', '', '', '', '', 0),
(116, 'ffghfgh', 'fghfgh', 'fghfgh@fghfg.fr', '25', '25', 'sa', '64270', '', '', 0),
(117, 'ffghfgh', 'fghfgh', 'fghfgh@fghfg.fr', '25', '25', 'sa', '64270', '', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
