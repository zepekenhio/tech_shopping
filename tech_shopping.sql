-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 02 déc. 2021 à 12:29
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tech_shopping`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

CREATE TABLE `achat` (
  `achat_id` int(11) NOT NULL,
  `prouct_name` varchar(150) NOT NULL,
  `product_carateristique` varchar(255) NOT NULL,
  `product_price_unit` float NOT NULL,
  `product_quantity` int(15) NOT NULL,
  `product_cost_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bank_mouvement`
--

CREATE TABLE `bank_mouvement` (
  `mouvement_id` int(11) NOT NULL,
  `mouvement_title` varchar(150) NOT NULL,
  `mouvement_description` varchar(255) NOT NULL,
  `mouvement_sum` float NOT NULL,
  `flux` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caisse_mouvement`
--

CREATE TABLE `caisse_mouvement` (
  `mouvement_id` int(11) NOT NULL,
  `mouvement_title` varchar(150) NOT NULL,
  `mouvement_description` varchar(255) NOT NULL,
  `mouvement_sum` float NOT NULL,
  `flux` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `charges`
--

CREATE TABLE `charges` (
  `charge_id` int(11) NOT NULL,
  `charge_name` varchar(150) NOT NULL,
  `charge_description` varchar(255) NOT NULL,
  `charge_quantity` float NOT NULL,
  `charge_price_unite` float DEFAULT NULL,
  `charge_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `mouvement_id` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_caracteristique` varchar(255) NOT NULL,
  `product_quantity` int(15) NOT NULL,
  `product_price_unit` float NOT NULL,
  `product_cost_price` float NOT NULL,
  `flux` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(125) NOT NULL,
  `last_name` varchar(125) NOT NULL,
  `user_name` varchar(125) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE `vente` (
  `vente_id` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_caracteristique` varchar(255) NOT NULL,
  `product_quantity` int(15) NOT NULL,
  `product_price_unit` float NOT NULL,
  `product_cost_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achat`
--
ALTER TABLE `achat`
  ADD PRIMARY KEY (`achat_id`);

--
-- Index pour la table `bank_mouvement`
--
ALTER TABLE `bank_mouvement`
  ADD PRIMARY KEY (`mouvement_id`);

--
-- Index pour la table `caisse_mouvement`
--
ALTER TABLE `caisse_mouvement`
  ADD PRIMARY KEY (`mouvement_id`);

--
-- Index pour la table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`charge_id`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`mouvement_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`vente_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `achat`
--
ALTER TABLE `achat`
  MODIFY `achat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `bank_mouvement`
--
ALTER TABLE `bank_mouvement`
  MODIFY `mouvement_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `caisse_mouvement`
--
ALTER TABLE `caisse_mouvement`
  MODIFY `mouvement_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `charges`
--
ALTER TABLE `charges`
  MODIFY `charge_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `mouvement_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `vente`
--
ALTER TABLE `vente`
  MODIFY `vente_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
