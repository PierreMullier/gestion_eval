-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 20 juin 2022 à 14:57
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestioneval`
--
CREATE DATABASE IF NOT EXISTS `gestioneval` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gestioneval`;

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `idEtudiants` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`idEtudiants`, `nom`, `prenom`, `mail`, `password`) VALUES
(1, 'jean', 'pierre', 'pierre.mullier2@gmail.com', 'test'),
(2, 't', 'clement', 'biouclem@gmail.com', 'h'),
(3, 'h', 'noe', 'noe.bouflet@gmail.com', 'h');

-- --------------------------------------------------------

--
-- Structure de la table `evaluations`
--

CREATE TABLE `evaluations` (
  `idEvaluations` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `evaluations`
--

INSERT INTO `evaluations` (`idEvaluations`, `description`, `date`) VALUES
(1, 'zzzzzz', 'zzzzzzzzz'),
(2, '', ''),
(3, 'zzzzzz', 'sqfsgs'),
(4, 'aze', '12/05/21'),
(5, '', ''),
(6, '', ''),
(7, '', ''),
(8, '', ''),
(9, '', ''),
(10, '', ''),
(11, '', ''),
(12, '', ''),
(13, '', ''),
(14, '', ''),
(15, '', ''),
(16, '', ''),
(17, '', ''),
(18, 'ee', 'ee'),
(26, 'relou', '12/05/21'),
(27, 'relou', ''),
(28, 'dddd', 'dddddd'),
(29, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `idFormations` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`idFormations`, `nom`) VALUES
(1, 'ESIC-SOLUTEC');

-- --------------------------------------------------------

--
-- Structure de la table `formations_has_modules`
--

CREATE TABLE `formations_has_modules` (
  `formations_idFormations` int(11) NOT NULL,
  `modules_idModules` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

CREATE TABLE `modules` (
  `idModules` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `modules`
--

INSERT INTO `modules` (`idModules`, `nom`) VALUES
(8, 'cours particulier avec Clément'),
(10, 'Salut'),
(11, 'SVT');

-- --------------------------------------------------------

--
-- Structure de la table `modules_has_evaluations`
--

CREATE TABLE `modules_has_evaluations` (
  `modules_idModules` int(11) NOT NULL,
  `evaluations_idEvaluations` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `profs`
--

CREATE TABLE `profs` (
  `idProfs` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `profs`
--

INSERT INTO `profs` (`idProfs`, `nom`, `prenom`, `mail`, `password`) VALUES
(1, 'Pierre', 'Pierre', 'test', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `idSessions` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`idSessions`, `nom`) VALUES
(1, 'Dev03'),
(2, 'Session2');

-- --------------------------------------------------------

--
-- Structure de la table `sessions_has_etudiants`
--

CREATE TABLE `sessions_has_etudiants` (
  `sessions_idSessions` int(11) NOT NULL,
  `etudiants_idEtudiants` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sessions_has_evaluations`
--

CREATE TABLE `sessions_has_evaluations` (
  `sessions_idSessions` int(11) NOT NULL,
  `evaluations_idEvaluations` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sessions_has_formations`
--

CREATE TABLE `sessions_has_formations` (
  `sessions_idSessions` int(11) NOT NULL,
  `formations_idFormations` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`idEtudiants`);

--
-- Index pour la table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`idEvaluations`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`idFormations`);

--
-- Index pour la table `formations_has_modules`
--
ALTER TABLE `formations_has_modules`
  ADD PRIMARY KEY (`formations_idFormations`,`modules_idModules`),
  ADD KEY `fk_formations_has_modules_modules1` (`modules_idModules`);

--
-- Index pour la table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`idModules`);

--
-- Index pour la table `modules_has_evaluations`
--
ALTER TABLE `modules_has_evaluations`
  ADD PRIMARY KEY (`modules_idModules`,`evaluations_idEvaluations`),
  ADD KEY `fk_modules_has_evaluations_evaluations1` (`evaluations_idEvaluations`);

--
-- Index pour la table `profs`
--
ALTER TABLE `profs`
  ADD PRIMARY KEY (`idProfs`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`idSessions`);

--
-- Index pour la table `sessions_has_etudiants`
--
ALTER TABLE `sessions_has_etudiants`
  ADD PRIMARY KEY (`sessions_idSessions`,`etudiants_idEtudiants`),
  ADD KEY `fk_sessions_has_etudiants_etudiants1` (`etudiants_idEtudiants`);

--
-- Index pour la table `sessions_has_evaluations`
--
ALTER TABLE `sessions_has_evaluations`
  ADD PRIMARY KEY (`sessions_idSessions`,`evaluations_idEvaluations`),
  ADD KEY `fk_sessions_has_evaluations_evaluations1` (`evaluations_idEvaluations`);

--
-- Index pour la table `sessions_has_formations`
--
ALTER TABLE `sessions_has_formations`
  ADD PRIMARY KEY (`sessions_idSessions`,`formations_idFormations`),
  ADD KEY `fk_sessions_has_formations_formations1` (`formations_idFormations`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `idEtudiants` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `idEvaluations` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `idFormations` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `modules`
--
ALTER TABLE `modules`
  MODIFY `idModules` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `profs`
--
ALTER TABLE `profs`
  MODIFY `idProfs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `idSessions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `formations_has_modules`
--
ALTER TABLE `formations_has_modules`
  ADD CONSTRAINT `fk_formations_has_modules_formations1` FOREIGN KEY (`formations_idFormations`) REFERENCES `formations` (`idFormations`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_formations_has_modules_modules1` FOREIGN KEY (`modules_idModules`) REFERENCES `modules` (`idModules`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `modules_has_evaluations`
--
ALTER TABLE `modules_has_evaluations`
  ADD CONSTRAINT `fk_modules_has_evaluations_evaluations1` FOREIGN KEY (`evaluations_idEvaluations`) REFERENCES `evaluations` (`idEvaluations`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_modules_has_evaluations_modules1` FOREIGN KEY (`modules_idModules`) REFERENCES `modules` (`idModules`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `sessions_has_etudiants`
--
ALTER TABLE `sessions_has_etudiants`
  ADD CONSTRAINT `fk_sessions_has_etudiants_etudiants1` FOREIGN KEY (`etudiants_idEtudiants`) REFERENCES `etudiants` (`idEtudiants`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sessions_has_etudiants_sessions` FOREIGN KEY (`sessions_idSessions`) REFERENCES `sessions` (`idSessions`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `sessions_has_evaluations`
--
ALTER TABLE `sessions_has_evaluations`
  ADD CONSTRAINT `fk_sessions_has_evaluations_evaluations1` FOREIGN KEY (`evaluations_idEvaluations`) REFERENCES `evaluations` (`idEvaluations`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sessions_has_evaluations_sessions1` FOREIGN KEY (`sessions_idSessions`) REFERENCES `sessions` (`idSessions`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `sessions_has_formations`
--
ALTER TABLE `sessions_has_formations`
  ADD CONSTRAINT `fk_sessions_has_formations_formations1` FOREIGN KEY (`formations_idFormations`) REFERENCES `formations` (`idFormations`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sessions_has_formations_sessions1` FOREIGN KEY (`sessions_idSessions`) REFERENCES `sessions` (`idSessions`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
