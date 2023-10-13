-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 11 oct. 2023 à 20:48
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `policebase`
--

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--

DROP TABLE IF EXISTS `agent`;
CREATE TABLE IF NOT EXISTS `agent` (
  `matricule_agent` int NOT NULL AUTO_INCREMENT,
  `nom_agent` varchar(250) NOT NULL,
  `prenom_agent` varchar(250) NOT NULL,
  `date_nais` date NOT NULL,
  `id_sexe` int NOT NULL,
  `taille` int NOT NULL,
  `nationalite` varchar(250) NOT NULL,
  `id_grade` int NOT NULL,
  `id_departement` int NOT NULL,
  PRIMARY KEY (`matricule_agent`),
  KEY `id_departement` (`id_departement`),
  KEY `id_grade` (`id_grade`),
  KEY `id_sexe` (`id_sexe`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `agent`
--

INSERT INTO `agent` (`matricule_agent`, `nom_agent`, `prenom_agent`, `date_nais`, `id_sexe`, `taille`, `nationalite`, `id_grade`, `id_departement`) VALUES
(1, 'Morales', 'Gilles', '1999-06-25', 2, 187, 'Portugais ', 8, 5),
(2, 'Koné', 'Sidick', '1985-02-12', 2, 175, 'Ivoirien', 5, 4);

-- --------------------------------------------------------

--
-- Structure de la table `casier`
--

DROP TABLE IF EXISTS `casier`;
CREATE TABLE IF NOT EXISTS `casier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule_prisonnier` int NOT NULL,
  `crime` varchar(750) NOT NULL,
  `date_jugement` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `matricule_prisonnier` (`matricule_prisonnier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

DROP TABLE IF EXISTS `departement`;
CREATE TABLE IF NOT EXISTS `departement` (
  `id_departement` int NOT NULL AUTO_INCREMENT,
  `libelle_departement` varchar(250) NOT NULL,
  PRIMARY KEY (`id_departement`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id_departement`, `libelle_departement`) VALUES
(1, 'Police judiciaire'),
(2, 'Services de sécurité publique'),
(3, 'Police technique et scientifique'),
(4, 'Police des stupéfiants et des drogues'),
(5, 'Police criminelle'),
(6, 'Direction de la transmission et des systèmes d\'information'),
(7, 'Direction des renseignements généraux'),
(8, 'Direction de la Formation et de l\'Ecole Nationale de Police'),
(9, 'Direction de la surveillance du territoire'),
(10, 'Direction de l\'identification judiciaire'),
(11, 'Direction des unités d\'intervention'),
(12, 'Direction du laboratoire central de la police'),
(13, 'Direction du Personnel de la Police Nationale'),
(14, 'Direction de la Police Economique et Financière '),
(15, 'Direction des Services de Santé de la Police Nationale');

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

DROP TABLE IF EXISTS `grade`;
CREATE TABLE IF NOT EXISTS `grade` (
  `id_grade` int NOT NULL AUTO_INCREMENT,
  `libelle_grade` varchar(250) NOT NULL,
  PRIMARY KEY (`id_grade`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `grade`
--

INSERT INTO `grade` (`id_grade`, `libelle_grade`) VALUES
(1, 'Commissaire divisionnaire-major'),
(2, 'Commissaire principal'),
(3, 'Commissaire de 1ere classe'),
(4, 'Commissaire de 2ieme classe'),
(5, 'Commissaire stagiaire'),
(6, 'Capitaine-major'),
(7, 'Capitaine'),
(8, 'Lieutenant'),
(9, 'Officier stagiaire'),
(10, 'Adjudant-chef major'),
(11, 'Adjudant-chef'),
(12, 'Adjudant'),
(13, 'Sergent-chef'),
(14, 'Sergent'),
(15, 'Sous-officier stagiaire');

-- --------------------------------------------------------

--
-- Structure de la table `information`
--

DROP TABLE IF EXISTS `information`;
CREATE TABLE IF NOT EXISTS `information` (
  `id_information` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(750) NOT NULL,
  `contenu` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id_information`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- --------------------------------------------------------

--
-- Structure de la table `plainte`
--

DROP TABLE IF EXISTS `plainte`;
CREATE TABLE IF NOT EXISTS `plainte` (
  `id_plainte` int NOT NULL AUTO_INCREMENT,
  `nom_plaignant` varchar(250) NOT NULL,
  `prenom_plaignant` varchar(250) NOT NULL,
  `date_nais` date NOT NULL,
  `id_sexe` int NOT NULL,
  `nationalite` varchar(250) NOT NULL,
  `lieu_habitation` varchar(250) NOT NULL,
  `date_depot` date NOT NULL,
  `titre_plainte` varchar(750) NOT NULL,
  `description` text NOT NULL,
  `destinataire_plainte` varchar(500) NOT NULL,
  PRIMARY KEY (`id_plainte`),
  KEY `id_sexe` (`id_sexe`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `plainte`
--

INSERT INTO `plainte` (`id_plainte`, `nom_plaignant`, `prenom_plaignant`, `date_nais`, `id_sexe`, `nationalite`, `lieu_habitation`, `date_depot`, `titre_plainte`, `description`, `destinataire_plainte`) VALUES
(1, 'Kouakou', 'Violaine', '1999-04-25', 1, 'Ivoirienne', 'Koumassi', '2023-10-11', 'Vol', 'Vol de bijoux supposé fait par sa servante', 'Akissi ariane');

-- --------------------------------------------------------

--
-- Structure de la table `prisonnier`
--

DROP TABLE IF EXISTS `prisonnier`;
CREATE TABLE IF NOT EXISTS `prisonnier` (
  `matricule_prisonnier` int NOT NULL AUTO_INCREMENT,
  `photo_prisonnier` varchar(250) NOT NULL,
  `nom_prisonnier` varchar(250) NOT NULL,
  `prenom_prisonnier` varchar(250) NOT NULL,
  `date_nais` date NOT NULL,
  `id_sexe` int NOT NULL,
  `taille` int NOT NULL,
  `nationalite` varchar(250) NOT NULL,
  `profession` varchar(250) NOT NULL,
  `date_entree` date NOT NULL,
  `id_statut` int NOT NULL,
  PRIMARY KEY (`matricule_prisonnier`),
  KEY `id_sexe` (`id_sexe`),
  KEY `id_statut` (`id_statut`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `prisonnier`
--

INSERT INTO `prisonnier` (`matricule_prisonnier`, `photo_prisonnier`, `nom_prisonnier`, `prenom_prisonnier`, `date_nais`, `id_sexe`, `taille`, `nationalite`, `profession`, `date_entree`, `id_statut`) VALUES
(1, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFBcVFRYYGBcaGx0eGxsbHCAhGx0iHRsgGyAdGx0dICwkIB0pHiAaJTYlKS8wMzMzGyI5PjkxPSwyMzABCwsLBgYGEAYGEDAcFRwwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMP/AABEIAQ0AvAMBIgACEQE', 'Escobar', 'Pablo', '1979-12-01', 2, 162, 'Colombienne', 'Trafiquant de drogue', '1993-12-02', 2);

-- --------------------------------------------------------

--
-- Structure de la table `sexe`
--

DROP TABLE IF EXISTS `sexe`;
CREATE TABLE IF NOT EXISTS `sexe` (
  `id_sexe` int NOT NULL AUTO_INCREMENT,
  `libelle_sexe` varchar(15) NOT NULL,
  PRIMARY KEY (`id_sexe`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sexe`
--

INSERT INTO `sexe` (`id_sexe`, `libelle_sexe`) VALUES
(1, 'Féminin'),
(2, 'Masculin');

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

DROP TABLE IF EXISTS `statut`;
CREATE TABLE IF NOT EXISTS `statut` (
  `id_statut` int NOT NULL AUTO_INCREMENT,
  `libelle_statut` varchar(250) NOT NULL,
  PRIMARY KEY (`id_statut`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`id_statut`, `libelle_statut`) VALUES
(1, 'Recherché(e)'),
(2, 'Libre'),
(3, 'En prison');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`id_departement`) REFERENCES `departement` (`id_departement`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `agent_ibfk_2` FOREIGN KEY (`id_grade`) REFERENCES `grade` (`id_grade`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `agent_ibfk_3` FOREIGN KEY (`id_sexe`) REFERENCES `sexe` (`id_sexe`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `casier`
--
ALTER TABLE `casier`
  ADD CONSTRAINT `casier_ibfk_1` FOREIGN KEY (`matricule_prisonnier`) REFERENCES `prisonnier` (`matricule_prisonnier`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `plainte`
--
ALTER TABLE `plainte`
  ADD CONSTRAINT `plainte_ibfk_1` FOREIGN KEY (`id_sexe`) REFERENCES `sexe` (`id_sexe`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `prisonnier`
--
ALTER TABLE `prisonnier`
  ADD CONSTRAINT `prisonnier_ibfk_1` FOREIGN KEY (`id_sexe`) REFERENCES `sexe` (`id_sexe`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `prisonnier_ibfk_2` FOREIGN KEY (`id_statut`) REFERENCES `statut` (`id_statut`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
