-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 11 sep. 2023 à 15:42
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
-- Base de données : `wf3_php_intermediaire_oliver`
--

-- --------------------------------------------------------

--
-- Structure de la table `advert`
--

CREATE TABLE `advert` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `city` varchar(250) NOT NULL,
  `type` enum('location','vente') NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `reservation_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `advert`
--

INSERT INTO `advert` (`id`, `title`, `description`, `postal_code`, `city`, `type`, `price`, `reservation_message`) VALUES
(1, 'GOE', 'drgqyt-', '94370', 'Sucy en brie', 'location', '15000.00', ''),
(2, 'Casa Millions', 'A melhor do mundo so aqui', '94370', 'Sucy en brie', 'vente', '15000.00', ''),
(3, 'Alili', 'sgfqertrtqrqhgfdghrthrt', '94370', 'Sucy en brie', 'vente', '800020.00', ''),
(4, 'Appartement confortable à Paris', 'Charmant appartement d\'une chambre au cœur de Paris, parfait pour les couples. Entièrement meublé et avec vue sur la Tour Eiffel', '75001', '15 Rue de la Seine, Paris', 'location', '800045.00', ''),
(5, 'Maison de campagne en Provence', 'Maison de campagne pittoresque dans la région de Provence, entourée de champs de lavande et de vignobles. Idéale pour une escapade paisible', '84300', '7 Chemin des Oliviers, Gordes', 'vente', '7000000.00', ''),
(6, 'Studio moderne à Lyon', 'Elégant studio à Lyon, à quelques pas du centre historique. Cuisine équipée et balcon avec vue sur le Rhône', '69002', '25 Quai Victor Augagneur, Lyon', 'location', '500789.00', ''),
(7, 'Villa en bord de mer à Nice', 'Villa en bord de mer avec piscine privée à Nice, Côte d\'Azur. Profitez de couchers de soleil spectaculaires tous les soirs.', '06000', '10 Promenade des Anglais, Nice', 'vente', '800756.00', ''),
(8, 'Chalet dans les Alpes', 'Chalet de montagne confortable dans les Alpes françaises, à proximité des pistes de ski et des sentiers de randonnée. Cheminée et bain à remous.', '74400', '42 Route des Granges, Chamonix', 'location', '52000.00', ''),
(9, 'Loft moderne à Bordeaux', 'Loft spacieux dans le centre de Bordeaux, avec un design contemporain et une terrasse privée. Idéal pour découvrir la ville.', '33000', '8 Rue Saint-Rémi, Bordeaux', 'vente', '1800020.00', ''),
(10, 'Maison de campagne en Normandie', 'Charmante maison de campagne dans la région normande, avec un jardin luxuriant et une vue sur les champs verdoyants', '14290', '3 Chemin du Val, Orbec', 'location', '50786.00', ''),
(11, 'Appartement avec vue sur la mer à Marseille', 'Appartement en bord de mer à Marseille avec balcon panoramique et accès direct à la plage. Idéal pour les amoureux de la mer.', '13007', '18 Quai de Rive Neuve, Marseille', 'vente', '80786.00', ''),
(12, 'Elegant Chateau in the Loire Valley\" (Château élégant dans la vallée de la Loire)', 'Château historique dans la vallée de la Loire, avec des chambres luxueuses et des jardins magnifiques. Une véritable expérience française.', '37150', '5 Rue de la Roche, Chenonceaux', 'location', '110001.00', ''),
(13, 'Appartement avec jardin à Toulouse', 'Appartement spacieux à Toulouse avec jardin privé et espace barbecue. Parfait pour les familles.', '31000', '12 Rue de la Colombette, Toulouse', 'vente', '80075.00', ''),
(14, 'Maison de plage à Biarritz', 'Maison en bord de mer à Biarritz, avec piscine et accès direct à la plage. Idéale pour les surfeurs et les amoureux de la mer.', '64200', '20 Boulevard du Prince de Galles, Biarritz', 'location', '90078.00', ''),
(15, 'Loft d\'art à Montpellier', 'Loft d\'art dans le centre de Montpellier, avec un atelier d\'art et une décoration unique. Parfait pour les créatifs.', '34000', '9 Rue de l\'Université, Montpellier', 'vente', '50470.00', ''),
(16, 'Maison de village en Bretagne', 'Charmante maison de village en Bretagne, avec cheminée et détails rustiques. Découvrez la culture locale.', '56360', '14 Rue des Artisans, Le Palais', 'location', '57074.00', ''),
(17, 'Appartement avec terrasse à Strasbourg', 'Appartement moderne à Strasbourg avec terrasse privée et vue sur la cathédrale. Le centre historique est accessible à pied.', '67000', '6 Quai Saint-Thomas, Strasbourg', 'vente', '33074.00', ''),
(18, 'Villa de luxe à Cannes', 'Villa de luxe à Cannes avec piscine à débordement et vue sur la mer. Vivez le glamour de la Côte d\'Azur', '06400', '30 Boulevard de la Croisette, Cannes', 'location', '11777.00', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_id` (`title`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
