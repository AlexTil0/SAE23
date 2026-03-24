-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 24 mars 2026 à 16:55
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
-- Base de données : `mydb`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id_article` char(10) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `prix` decimal(8,2) NOT NULL,
  `categorie` enum('Tous','Ps5','Ps4','Mobile','Nintendo Switch','PC') NOT NULL DEFAULT 'Tous'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `designation`, `prix`, `categorie`) VALUES
('ACC0000001', 'Manette PS5 DualSense', 69.99, 'Ps5'),
('ACC0000002', 'Station de recharge DualSense', 29.99, 'Ps5'),
('ACC0000003', 'Casque Pulse 3D', 99.99, 'Ps5'),
('ACC0000004', 'Caméra HD PS5', 59.99, 'Ps5'),
('ACC0000005', 'Télécommande multimédia PS5', 29.99, 'Ps5'),
('ACC0000006', 'Manette DualShock 4', 59.99, 'Ps4'),
('ACC0000007', 'Station de recharge PS4', 24.99, 'Ps4'),
('ACC0000008', 'Casque gaming PS4', 79.99, 'Ps4'),
('ACC0000009', 'Caméra PS4', 49.99, 'Ps4'),
('ACC0000010', 'Support vertical PS4', 14.99, 'Ps4'),
('ACC0000011', 'Manette Pro Switch', 64.99, 'Nintendo Switch'),
('ACC0000012', 'Joy-Con gauche/droite', 79.99, 'Nintendo Switch'),
('ACC0000013', 'Station de recharge Joy-Con', 29.99, 'Nintendo Switch'),
('ACC0000014', 'Étui de transport Switch', 19.99, 'Nintendo Switch'),
('ACC0000015', 'Protection écran Switch', 9.99, 'Nintendo Switch'),
('ACC0000016', 'Clavier gaming mécanique', 129.99, 'PC'),
('ACC0000017', 'Souris gaming RGB', 49.99, 'PC'),
('ACC0000018', 'Casque gaming PC', 89.99, 'PC'),
('ACC0000019', 'Microphone USB', 79.99, 'PC'),
('ACC0000020', 'Webcam HD', 39.99, 'PC'),
('ACC0000021', 'Manette Xbox Series X', 59.99, 'PC'),
('ACC0000022', 'Manette Xbox Elite Series 2', 149.99, 'PC'),
('ACC0000023', 'Volant Logitech G29', 299.99, 'Ps5'),
('ACC0000024', 'Volant Thrustmaster T248', 349.99, 'Ps5'),
('ACC0000025', 'Support casque gaming', 19.99, 'PC'),
('ACC0000026', 'Hub USB 3.0', 24.99, 'PC'),
('ACC0000027', 'Disque dur externe 2To', 109.99, 'Ps4'),
('ACC0000028', 'SSD externe 1To', 129.99, 'Ps5'),
('ACC0000029', 'Station refroidissement PS5', 29.99, 'Ps5'),
('ACC0000030', 'Ventilateur externe PS4', 19.99, 'Ps4'),
('ACC0000031', 'Grip manette PS5', 14.99, 'Ps5'),
('ACC0000032', 'Grip manette PS4', 12.99, 'Ps4'),
('ACC0000033', 'Coque protection Switch', 14.99, 'Nintendo Switch'),
('ACC0000034', 'Chargeur voiture Switch', 19.99, 'Nintendo Switch'),
('ACC0000035', 'Adaptateur manette PC', 24.99, 'PC'),
('ACC0000036', 'Tapis RGB gaming', 29.99, 'PC'),
('ACC0000037', 'Support écran réglable', 39.99, 'PC'),
('ACC0000038', 'Lampe LED bureau gaming', 34.99, 'PC'),
('ACC0000039', 'Batterie externe Switch', 49.99, 'Nintendo Switch'),
('ACC0000040', 'Dock alternatif Switch', 59.99, 'Nintendo Switch'),
('CON0000001', 'PlayStation 5', 549.99, 'Ps5'),
('CON0000002', 'PlayStation 5 Digital Edition', 449.99, 'Ps5'),
('CON0000003', 'PlayStation 4', 299.99, 'Ps4'),
('CON0000004', 'PlayStation 4 Slim', 249.99, 'Ps4'),
('CON0000005', 'PlayStation 4 Pro', 349.99, 'Ps4'),
('CON0000006', 'Nintendo Switch', 299.99, 'Nintendo Switch'),
('CON0000007', 'Nintendo Switch OLED', 349.99, 'Nintendo Switch'),
('CON0000008', 'Nintendo Switch Lite', 219.99, 'Nintendo Switch'),
('CON0000009', 'Steam Deck', 399.99, 'PC'),
('CON0000010', 'ROG Ally', 699.99, 'PC'),
('MOB0000001', 'Clash of Clans', 0.00, 'Mobile'),
('MOB0000002', 'Genshin Impact', 0.00, 'Mobile'),
('MOB0000003', 'Call of Duty Mobile', 0.00, 'Mobile'),
('MOB0000004', 'Subway Surfers', 0.00, 'Mobile'),
('MOB0000005', 'Candy Crush Saga', 0.00, 'Mobile'),
('MOB0000006', 'Clash Royale', 0.00, 'Mobile'),
('MOB0000007', 'PUBG Mobile', 0.00, 'Mobile'),
('MOB0000008', 'Among Us', 0.00, 'Mobile'),
('MOB0000010', 'Brawl Stars', 0.00, 'Mobile'),
('MOB0000011', 'Hearthstone', 0.00, 'Mobile'),
('MOB0000012', 'Free Fire', 0.00, 'Mobile'),
('MOB0000013', 'Shadow Fight 3', 0.00, 'Mobile'),
('MOB0000014', 'Asphalt 9 Legends', 0.00, 'Mobile'),
('MOB0000015', 'Mobile Legends', 0.00, 'Mobile'),
('MOB0000016', 'Pokemon GO', 0.00, 'Mobile'),
('MOB0000017', 'Plants vs Zombies 2', 0.00, 'Mobile'),
('MOB0000018', 'Jetpack Joyride', 0.00, 'Mobile'),
('MOB0000019', 'Hill Climb Racing', 0.00, 'Mobile'),
('MOB0000020', 'Angry Birds', 0.00, 'Mobile'),
('MOB0000021', 'Temple Run', 0.00, 'Mobile'),
('MOB0000022', 'Fruit Ninja', 0.00, 'Mobile'),
('MOB0000023', 'Cut the Rope', 0.00, 'Mobile'),
('MOB0000024', 'Crossy Road', 0.00, 'Mobile'),
('MOB0000025', 'Geometry Dash', 1.99, 'Mobile'),
('MOB0000026', 'Monument Valley', 3.99, 'Mobile'),
('MOB0000027', 'Mini Militia', 0.00, 'Mobile'),
('MOB0000028', '8 Ball Pool', 0.00, 'Mobile'),
('MOB0000029', 'Jetpack Joyride Classic', 0.00, 'Mobile'),
('MOB0000030', 'Clash Mini', 0.00, 'Mobile'),
('MOB0000031', 'Boom Beach', 0.00, 'Mobile'),
('MOB0000032', 'Hay Day', 0.00, 'Mobile'),
('MOB0000033', 'Archero', 0.00, 'Mobile'),
('MOB0000034', 'Idle Miner Tycoon', 0.00, 'Mobile'),
('MOB0000035', 'AFK Arena', 0.00, 'Mobile'),
('MOB0000036', 'Summoners War', 0.00, 'Mobile'),
('MOB0000037', 'Raid Shadow Legends', 0.00, 'Mobile'),
('MOB0000038', 'Dragon Ball Legends', 0.00, 'Mobile'),
('MOB0000039', 'Yu-Gi-Oh Duel Links', 0.00, 'Mobile'),
('MOB0000040', 'Marvel Contest of Champions', 0.00, 'Mobile'),
('MOB0000041', 'Injustice 2 Mobile', 0.00, 'Mobile'),
('MOB0000042', 'Real Racing 3', 0.00, 'Mobile'),
('MOB0000043', 'CSR Racing 2', 0.00, 'Mobile'),
('MOB0000044', 'Traffic Rider', 0.00, 'Mobile'),
('MOB0000045', 'Score Hero', 0.00, 'Mobile'),
('MOB0000046', 'Dream League Soccer', 0.00, 'Mobile'),
('MOB0000047', 'Top Eleven', 0.00, 'Mobile'),
('MOB0000048', 'SimCity BuildIt', 0.00, 'Mobile'),
('MOB0000049', 'Fallout Shelter', 0.00, 'Mobile'),
('MOB0000050', 'Plague Inc', 0.99, 'Mobile'),
('MOB0000051', 'Reigns', 2.99, 'Mobile'),
('MOB0000052', 'Alto Adventure', 2.99, 'Mobile'),
('MOB0000053', 'Alto Odyssey', 2.99, 'Mobile'),
('MOB0000054', 'Eternium', 0.00, 'Mobile'),
('PC00000001', 'Cyberpunk 2077', 49.99, 'PC'),
('PC00000002', 'Baldur\'s Gate 3', 59.99, 'PC'),
('PC00000003', 'Counter-Strike 2', 0.00, 'PC'),
('PC00000004', 'World of Warcraft', 39.99, 'PC'),
('PC00000005', 'Skyrim', 29.99, 'PC'),
('PC00000006', 'The Sims 4', 0.00, 'PC'),
('PC00000007', 'Dota 2', 0.00, 'PC'),
('PC00000008', 'Half-Life 2', 9.99, 'PC'),
('PC00000010', 'Starcraft II', 0.00, 'PC'),
('PC00000011', 'Civilization VI', 29.99, 'PC'),
('PC00000012', 'Terraria', 9.99, 'PC'),
('PC00000013', 'Age of Empires II Definitive Edition', 19.99, 'PC'),
('PC00000014', 'Rust', 39.99, 'PC'),
('PC00000015', 'ARK Survival Evolved', 19.99, 'PC'),
('PC00000016', 'Euro Truck Simulator 2', 19.99, 'PC'),
('PC00000017', 'Factorio', 29.99, 'PC'),
('PC00000018', 'Project Zomboid', 19.99, 'PC'),
('PC00000019', 'Phasmophobia', 13.99, 'PC'),
('PC00000020', 'Diablo II', 19.99, 'PC'),
('PC00000021', 'Warcraft III', 19.99, 'PC'),
('PC00000022', 'Counter-Strike 1.6', 9.99, 'PC'),
('PC00000023', 'RollerCoaster Tycoon', 9.99, 'PC'),
('PC00000024', 'SimCity 4', 9.99, 'PC'),
('PC00000025', 'Quake III Arena', 9.99, 'PC'),
('PC00000026', 'Unreal Tournament', 9.99, 'PC'),
('PC00000027', 'Stronghold Crusader', 9.99, 'PC'),
('PC00000028', 'Command & Conquer Red Alert 2', 9.99, 'PC'),
('PC00000029', 'Prince of Persia Sands of Time', 9.99, 'PC'),
('PC00000030', 'Banished', 19.99, 'PC'),
('PC00000031', 'Cities Skylines', 29.99, 'PC'),
('PC00000032', 'Frostpunk', 29.99, 'PC'),
('PC00000033', 'RimWorld', 34.99, 'PC'),
('PC00000034', 'Oxygen Not Included', 24.99, 'PC'),
('PC00000035', 'Stellaris', 39.99, 'PC'),
('PC00000036', 'Europa Universalis IV', 39.99, 'PC'),
('PC00000037', 'Hearts of Iron IV', 39.99, 'PC'),
('PC00000038', 'Total War Rome II', 29.99, 'PC'),
('PC00000039', 'Total War Warhammer II', 39.99, 'PC'),
('PC00000040', 'Football Manager 2024', 59.99, 'PC'),
('PC00000041', 'Anno 1800', 49.99, 'PC'),
('PC00000042', 'The Forest', 19.99, 'PC'),
('PC00000043', 'Green Hell', 24.99, 'PC'),
('PC00000044', 'DayZ', 39.99, 'PC'),
('PC00000045', '7 Days to Die', 24.99, 'PC'),
('PC00000046', 'Kerbal Space Program', 29.99, 'PC'),
('PC00000047', 'House Flipper', 19.99, 'PC'),
('PC00000048', 'PowerWash Simulator', 19.99, 'PC'),
('PC00000049', 'Goat Simulator', 9.99, 'PC'),
('PC00000050', 'Untitled Goose Game', 19.99, 'PC'),
('PC00000051', 'Little Nightmares', 19.99, 'PC'),
('PC00000052', 'Little Nightmares II', 29.99, 'PC'),
('PC00000053', 'Inside', 19.99, 'PC'),
('PC00000054', 'Limbo', 9.99, 'PC'),
('PS4000001', 'God of War', 29.99, 'Ps4'),
('PS4000002', 'The Last of Us Part II', 39.99, 'Ps4'),
('PS4000003', 'Uncharted 4', 19.99, 'Ps4'),
('PS4000004', 'GTA V', 19.99, 'Ps4'),
('PS4000005', 'Red Dead Redemption 2', 29.99, 'Ps4'),
('PS4000006', 'The Witcher 3', 19.99, 'Ps4'),
('PS4000007', 'Minecraft', 19.99, 'Ps4'),
('PS4000008', 'FIFA 23', 29.99, 'Ps4'),
('PS4000010', 'Bloodborne', 19.99, 'Ps4'),
('PS4000011', 'Dark Souls III', 19.99, 'Ps4'),
('PS4000012', 'Far Cry 5', 24.99, 'Ps4'),
('PS4000013', 'Battlefield 1', 14.99, 'Ps4'),
('PS4000014', 'Monster Hunter World', 19.99, 'Ps4'),
('PS4000015', 'Persona 5', 19.99, 'Ps4'),
('PS4000016', 'Nier Automata', 24.99, 'Ps4'),
('PS4000017', 'Resident Evil 7', 19.99, 'Ps4'),
('PS4000018', 'Dragon Ball FighterZ', 19.99, 'Ps4'),
('PS4000019', 'Tekken 7', 19.99, 'Ps4'),
('PS4000020', 'Assassin\'s Creed Black Flag', 19.99, 'Ps4'),
('PS4000021', 'Batman Arkham Knight', 19.99, 'Ps4'),
('PS4000022', 'Fallout 4', 19.99, 'Ps4'),
('PS4000023', 'Mortal Kombat X', 14.99, 'Ps4'),
('PS4000024', 'Watch Dogs', 14.99, 'Ps4'),
('PS4000025', 'The Division', 9.99, 'Ps4'),
('PS4000026', 'Need for Speed', 14.99, 'Ps4'),
('PS4000027', 'Just Cause 3', 14.99, 'Ps4'),
('PS4000028', 'Sleeping Dogs Definitive Edition', 19.99, 'Ps4'),
('PS4000029', 'Sniper Elite 4', 19.99, 'Ps4'),
('PS4000030', 'Far Cry 4', 14.99, 'Ps4'),
('PS4000031', 'Far Cry Primal', 14.99, 'Ps4'),
('PS4000032', 'Battlefield 4', 9.99, 'Ps4'),
('PS4000033', 'Battlefield V', 14.99, 'Ps4'),
('PS4000034', 'Killzone Shadow Fall', 9.99, 'Ps4'),
('PS4000035', 'Infamous Second Son', 14.99, 'Ps4'),
('PS4000036', 'The Order 1886', 14.99, 'Ps4'),
('PS4000037', 'Driveclub', 9.99, 'Ps4'),
('PS4000038', 'Gran Turismo Sport', 19.99, 'Ps4'),
('PS4000039', 'Project Cars', 14.99, 'Ps4'),
('PS4000040', 'Project Cars 2', 19.99, 'Ps4'),
('PS4000041', 'Mad Max', 14.99, 'Ps4'),
('PS4000042', 'Middle Earth Shadow of Mordor', 14.99, 'Ps4'),
('PS4000043', 'Middle Earth Shadow of War', 19.99, 'Ps4'),
('PS4000044', 'Dishonored 2', 14.99, 'Ps4'),
('PS4000045', 'Dishonored Definitive Edition', 14.99, 'Ps4'),
('PS4000046', 'Prey', 14.99, 'Ps4'),
('PS4000047', 'Doom', 19.99, 'Ps4'),
('PS4000048', 'Doom Eternal', 29.99, 'Ps4'),
('PS4000049', 'Wolfenstein The New Order', 14.99, 'Ps4'),
('PS4000050', 'Wolfenstein II', 19.99, 'Ps4'),
('PS4000051', 'The Evil Within', 14.99, 'Ps4'),
('PS4000052', 'The Evil Within 2', 19.99, 'Ps4'),
('PS4000053', 'Lego Marvel Super Heroes', 19.99, 'Ps4'),
('PS4000054', 'Lego Star Wars The Skywalker Saga', 39.99, 'Ps4'),
('PS5000001', 'Spider-Man 2', 79.99, 'Ps5'),
('PS5000002', 'Demon\'s Souls', 69.99, 'Ps5'),
('PS5000003', 'Final Fantasy XVI', 79.99, 'Ps5'),
('PS5000004', 'Elden Ring', 69.99, 'Ps5'),
('PS5000005', 'Resident Evil 4 Remake', 69.99, 'Ps5'),
('PS5000006', 'Hogwarts Legacy', 59.99, 'Ps5'),
('PS5000007', 'Gran Turismo 7', 69.99, 'Ps5'),
('PS5000008', 'Assassin\'s Creed Mirage', 49.99, 'Ps5'),
('PS5000010', 'Returnal', 59.99, 'Ps5'),
('PS5000011', 'Deathloop', 49.99, 'Ps5'),
('PS5000012', 'Star Wars Jedi Survivor', 79.99, 'Ps5'),
('PS5000013', 'Alan Wake 2', 59.99, 'Ps5'),
('PS5000014', 'Dead Space Remake', 69.99, 'Ps5'),
('PS5000015', 'Lies of P', 59.99, 'Ps5'),
('PS5000016', 'Armored Core VI', 69.99, 'Ps5'),
('PS5000017', 'Avatar Frontiers of Pandora', 79.99, 'Ps5'),
('PS5000018', 'The Crew Motorfest', 59.99, 'Ps5'),
('PS5000019', 'Mortal Kombat 1', 69.99, 'Ps5'),
('PS5000020', 'Resident Evil Village', 39.99, 'Ps5'),
('PS5000021', 'Crash Bandicoot 4', 39.99, 'Ps5'),
('PS5000022', 'Tony Hawk\'s Pro Skater 1+2', 29.99, 'Ps5'),
('PS5000023', 'Hitman 3', 49.99, 'Ps5'),
('PS5000024', 'Devil May Cry 5 Special Edition', 39.99, 'Ps5'),
('PS5000025', 'Yakuza Like a Dragon', 29.99, 'Ps5'),
('PS5000026', 'Control Ultimate Edition', 29.99, 'Ps5'),
('PS5000027', 'Metro Exodus', 29.99, 'Ps5'),
('PS5000028', 'Borderlands 3', 19.99, 'Ps5'),
('PS5000029', 'Outriders', 19.99, 'Ps5'),
('PS5000030', 'Forspoken', 49.99, 'Ps5'),
('PS5000031', 'Immortals of Aveum', 59.99, 'Ps5'),
('PS5000032', 'Wo Long Fallen Dynasty', 59.99, 'Ps5'),
('PS5000033', 'Remnant II', 59.99, 'Ps5'),
('PS5000034', 'Atlas Fallen', 49.99, 'Ps5'),
('PS5000035', 'Evil West', 39.99, 'Ps5'),
('PS5000036', 'Ghostrunner 2', 49.99, 'Ps5'),
('PS5000037', 'Payday 3', 39.99, 'Ps5'),
('PS5000038', 'The Callisto Protocol', 39.99, 'Ps5'),
('PS5000039', 'Kena Bridge of Spirits', 29.99, 'Ps5'),
('PS5000040', 'Stray', 29.99, 'Ps5'),
('PS5000041', 'Sifu', 29.99, 'Ps5'),
('PS5000042', 'Chivalry 2', 39.99, 'Ps5'),
('PS5000043', 'Back 4 Blood', 19.99, 'Ps5'),
('PS5000044', 'Biomutant', 29.99, 'Ps5'),
('PS5000045', 'Scarlet Nexus', 29.99, 'Ps5'),
('PS5000046', 'Tales of Arise', 39.99, 'Ps5'),
('PS5000047', 'Code Vein', 19.99, 'Ps5'),
('PS5000048', 'Judgment', 29.99, 'Ps5'),
('PS5000049', 'Lost Judgment', 39.99, 'Ps5'),
('PS5000050', 'Ghostwire Tokyo', 39.99, 'Ps5'),
('PS5000051', 'Death Stranding Director\'s Cut', 39.99, 'Ps5'),
('PS5000052', 'The Quarry', 39.99, 'Ps5'),
('PS5000053', 'Life is Strange True Colors', 29.99, 'Ps5'),
('PS5000054', 'Observer System Redux', 19.99, 'Ps5'),
('RETRO0001', 'Tetris', 9.99, 'Tous'),
('RETRO0002', 'Pac-Man', 9.99, 'Tous'),
('RETRO0003', 'Super Mario Bros', 14.99, 'Tous'),
('RETRO0004', 'Street Fighter II', 14.99, 'Tous'),
('SW00000001', 'Zelda Tears of the Kingdom', 69.99, 'Nintendo Switch'),
('SW00000002', 'Mario Kart 8 Deluxe', 59.99, 'Nintendo Switch'),
('SW00000003', 'Animal Crossing New Horizons', 49.99, 'Nintendo Switch'),
('SW00000004', 'Zelda Breath of the Wild', 59.99, 'Nintendo Switch'),
('SW00000005', 'Super Mario Odyssey', 59.99, 'Nintendo Switch'),
('SW00000006', 'Pokemon Scarlet', 59.99, 'Nintendo Switch'),
('SW00000007', 'Splatoon 3', 59.99, 'Nintendo Switch'),
('SW00000008', 'Luigi\'s Mansion 3', 49.99, 'Nintendo Switch'),
('SW00000010', 'Metroid Dread', 59.99, 'Nintendo Switch'),
('SW00000011', 'Kirby and the Forgotten Land', 59.99, 'Nintendo Switch'),
('SW00000012', 'Fire Emblem Three Houses', 59.99, 'Nintendo Switch'),
('SW00000013', 'Donkey Kong Tropical Freeze', 49.99, 'Nintendo Switch'),
('SW00000014', 'Pikmin 4', 59.99, 'Nintendo Switch'),
('SW00000015', 'Xenoblade Chronicles 3', 59.99, 'Nintendo Switch'),
('SW00000016', 'Bayonetta 3', 59.99, 'Nintendo Switch'),
('SW00000017', 'Mario Party Superstars', 59.99, 'Nintendo Switch'),
('SW00000018', 'Arms', 49.99, 'Nintendo Switch'),
('SW00000019', 'Captain Toad Treasure Tracker', 39.99, 'Nintendo Switch'),
('SW00000020', 'New Super Mario Bros U Deluxe', 59.99, 'Nintendo Switch'),
('SW00000021', 'Paper Mario The Origami King', 59.99, 'Nintendo Switch'),
('SW00000022', 'Yoshi\'s Crafted World', 49.99, 'Nintendo Switch'),
('SW00000023', 'Hyrule Warriors Age of Calamity', 59.99, 'Nintendo Switch'),
('SW00000024', 'Pokemon Let\'s Go Pikachu', 59.99, 'Nintendo Switch'),
('SW00000025', 'Pokemon Let\'s Go Eevee', 59.99, 'Nintendo Switch'),
('SW00000026', 'Dragon Quest XI S', 49.99, 'Nintendo Switch'),
('SW00000027', 'Ni no Kuni', 39.99, 'Nintendo Switch'),
('SW00000028', 'Crash Team Racing Nitro Fueled', 29.99, 'Nintendo Switch'),
('SW00000029', 'Rayman Legends Definitive Edition', 29.99, 'Nintendo Switch'),
('SW00000030', 'Octopath Traveler', 59.99, 'Nintendo Switch'),
('SW00000031', 'Octopath Traveler II', 59.99, 'Nintendo Switch'),
('SW00000032', 'Triangle Strategy', 59.99, 'Nintendo Switch'),
('SW00000033', 'Bravely Default II', 59.99, 'Nintendo Switch'),
('SW00000034', 'Monster Hunter Rise', 39.99, 'Nintendo Switch'),
('SW00000035', 'Story of Seasons', 39.99, 'Nintendo Switch'),
('SW00000036', 'Rune Factory 5', 49.99, 'Nintendo Switch'),
('SW00000037', 'Harvest Moon One World', 39.99, 'Nintendo Switch'),
('SW00000038', 'Just Dance 2024', 59.99, 'Nintendo Switch'),
('SW00000039', 'Ring Fit Adventure', 79.99, 'Nintendo Switch'),
('SW00000040', 'Fitness Boxing', 49.99, 'Nintendo Switch'),
('SW00000041', 'Splatoon 2', 49.99, 'Nintendo Switch'),
('SW00000042', 'Mario Tennis Aces', 49.99, 'Nintendo Switch'),
('SW00000043', 'Mario Golf Super Rush', 49.99, 'Nintendo Switch'),
('SW00000044', 'Hollow Knight', 14.99, 'Nintendo Switch'),
('SW00000045', 'Celeste', 19.99, 'Nintendo Switch'),
('SW00000046', 'Dead Cells', 24.99, 'Nintendo Switch'),
('SW00000047', 'Cuphead', 19.99, 'Nintendo Switch'),
('SW00000048', 'Stardew Valley', 14.99, 'Nintendo Switch'),
('SW00000049', 'Undertale', 14.99, 'Nintendo Switch'),
('SW00000050', 'Among Us Switch', 9.99, 'Nintendo Switch'),
('SW00000051', 'Overcooked 2', 24.99, 'Nintendo Switch'),
('SW00000052', 'Moving Out', 19.99, 'Nintendo Switch'),
('SW00000053', 'Snipperclips', 19.99, 'Nintendo Switch'),
('SW00000054', 'Aragami', 19.99, 'Nintendo Switch');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` mediumint(9) NOT NULL,
  `nom` char(50) NOT NULL,
  `prenom` char(50) NOT NULL,
  `age` tinyint(3) UNSIGNED DEFAULT NULL,
  `adresse` char(100) NOT NULL,
  `ville` char(50) NOT NULL,
  `mail` char(100) NOT NULL,
  `code` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `age`, `adresse`, `ville`, `mail`, `code`) VALUES
(2, 'zar\"aé\"r', 'a\"r&aér&é', 11, 'ré&ré&r&é', '&éré&ré&', 'yach9346@gmail.com', 'é&ré&ré&');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_comm` mediumint(8) UNSIGNED NOT NULL,
  `id_client` mediumint(9) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_comm`, `id_client`, `date`) VALUES
(1, 2, '2026-03-24');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_comm`,`id_client`),
  ADD KEY `id_client` (`id_client`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_comm` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
