-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema championsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `championsdb` ;

-- -----------------------------------------------------
-- Schema championsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `championsdb` DEFAULT CHARACTER SET utf8 ;
USE `championsdb` ;

-- -----------------------------------------------------
-- Table `champion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `champion` ;

CREATE TABLE IF NOT EXISTS `champion` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `champion_name` VARCHAR(100) NOT NULL,
  `champion_role` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO player@localhost;
 DROP USER player@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'player'@'localhost' IDENTIFIED BY 'player';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'player'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `champion`
-- -----------------------------------------------------
START TRANSACTION;
USE `championsdb`;
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (1, 'Aatrox the Darkin Blade', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (2, 'Ahri the Nine-Tailed Fox', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (3, 'Akali the Fist of Shadow', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (4, 'Alistar the Minotaur', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (5, 'Amumu the Sad Mummy', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (6, 'Anivia the Cryophoenix', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (7, 'Annie the Dark Child', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (8, 'Ashe the Frost Archer', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (9, 'Aurelion Sol the Star Forger', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (10, 'Azir the Emperor of the Sands', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (11, 'Bard the Wandering Caretaker', 'Support');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (12, 'Blitzcrank the Great Steam Golem', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (13, 'Brand the Burning Vengeance', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (14, 'Braum the Heart of the Freljord', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (15, 'Caitlyn the Sheriff of Piltover', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (16, 'Camille the Steel Shadow', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (17, 'Cassiopeia the Serpent\'s Embrace', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (18, 'Cho\'Gath the Terror of the Void', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (19, 'Corki the Daring Bombardier', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (20, 'Darius the Hand of Noxus', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (21, 'Diana Scorn of the Moon', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (22, 'Dr. Mundo the Madman of Zaun', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (23, 'Draven the Glorious Executioner', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (24, 'Ekko the Boy Who Shattered Time', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (25, 'Elise the Spider Queen', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (26, 'Evelynn the Widowmaker', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (27, 'Ezreal the Prodigal Explorer', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (28, 'Fiddlesticks the Harbinger of Doom', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (29, 'Fiora the Grand Duelist', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (30, 'Fizz the Tidal Trickster', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (31, 'Galio the Colossus', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (32, 'Gangplank the Saltwater Scourge', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (33, 'Garen the Might of Demacia', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (34, 'Gnar the Missing Link', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (35, 'Gragas the Rabble Rouser', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (36, 'Graves the Outlaw', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (37, 'Hecarim the Shadow of War', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (38, 'Heimerdinger the Revered Inventor', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (39, 'Illaoi the Kraken Priestess', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (40, 'Irelia the Will of the Blades', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (41, 'Ivern the Green Father', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (42, 'Janna the Storm\'s Fury', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (43, 'Jarvan IV the Eexemplar of Demacia', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (44, 'Jax Grandmaster at Arms', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (45, 'Jayce the Defender of Tomorrow', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (46, 'Jhin the Virtuoso', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (47, 'Jinx the Loose Cannon', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (48, 'Kalista the Spear of Vengeance', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (49, 'Karma the Enlightened One', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (50, 'Karthus the Deathsinger', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (51, 'Kassadin the Void Walker', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (52, 'Katarina the Sinister Blade', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (53, 'Kayle the Judicator', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (54, 'Kennen the Heart of the Tempest', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (55, 'Kha\'Zix the Voidreaver', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (56, 'Kindred the Eternal Hunters', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (57, 'Kled the Cantankerous Cavalier', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (58, 'Kog\'Maw the Mouth of the Abyss', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (59, 'LeBlanc the Deceiver', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (60, 'LeeSin the Blind Monk', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (61, 'Leona the Radiant Dawn', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (62, 'Lissandra the Ice Witch', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (63, 'Lucian the Purifier', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (64, 'Lulu the Fae Sorceress', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (65, 'Lux the Lady of Luminosity', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (66, 'Malphite Shard of the Monolith', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (67, 'Malzahar the Prophet of the Void', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (68, 'Maokai the Twisted Treant', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (69, 'Master Yi the Wuju Bladesman', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (70, 'Miss Fortune the Bounty Hunter', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (71, 'Mordekaiser the Iron Revenant', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (72, 'Morgana the Fallen Angel', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (73, 'Nami the Tidecaller', 'Support');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (74, 'Nasus the Curator of the Sands', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (75, 'Nautilus the Titan of the Depths', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (76, 'Nidalee the Bestial Huntress', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (77, 'Nocturne the Eternal Nightmare', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (78, 'Nunu the Yeti Rider', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (79, 'Olaf the Bersker', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (80, 'Orianna the Lady of Clockwork', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (81, 'Pantheon the Artisan of War', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (82, 'Poppy Keeper of the Hammer', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (83, 'Quinn Demacia\'s Wings', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (84, 'Rakan the Charmer', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (85, 'Rammus the Armordillo', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (86, 'Rek\'Sai the Void Burrower', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (87, 'Renekton the Butcher of the Sands', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (88, 'Rengar the Pridestalker', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (89, 'Riven the Exile', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (90, 'Rumble the Mechanized Menace', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (91, 'Ryze the Rune Mage', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (92, 'Sejuani Furth of the North', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (93, 'Shaco the Demon Jester', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (94, 'Shen the Eye of Twilight', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (95, 'Shyvana the Half-Dragon', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (96, 'Singed the Mad Chemist', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (97, 'Sion the Undead Juggernaut', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (98, 'Sivir the Battle Mistress', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (99, 'Skarner the Crystal Vanguard', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (100, 'Sona Maven of the Strings', 'Support');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (101, 'Soraka the Starchild', 'Support');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (102, 'Swain the Master Tactician', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (103, 'Syndra the Dark Sovereign', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (104, 'Tahm Kench the River King', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (105, 'Taliyah the Stoneweaver', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (106, 'Talon the Blade\'s Shadow', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (107, 'Taric the Shield of Valoran', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (108, 'Teemo the Swift Scout', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (109, 'Thresh the Chain Warden', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (110, 'Tristana the Yordle Gunner', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (111, 'Trundle the Troll King', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (112, 'Tryndamere the Barbarian King', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (113, 'Twisted Fate the Card Master', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (114, 'Twitch the Plague Rat', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (115, 'Udyr the Spirit Walker', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (116, 'Urgot the Headsman\'s Pride', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (117, 'Varus the Arrow of Retribution', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (118, 'Vayne the Night Hunter', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (119, 'Veigar the Tiny Master of Evil', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (120, 'Vel\'Koz the Eye of the Void', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (121, 'Vi the Piltover Enforcer', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (122, 'Viktor the Machine Herald', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (123, 'Vladimir the Crimson Reaper', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (124, 'Volibear the Thunder\'s Roar', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (125, 'Warwick the Uncaged Wrath of Zaun', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (126, 'Wukong the Monkey King', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (127, 'Xayah the Rebel', 'Marksman');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (128, 'Xerath the Magus Ascendant', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (129, 'Xin Zhao the Seneschal of Demacia', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (130, 'Yasuo the Unforgiven', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (131, 'Yorick Shepherd of Souls', 'Fighter');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (132, 'Zac the Secret Weapon', 'Tank');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (133, 'Zed the Master of Shadows', 'Slayer');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (134, 'Ziggs the Hexplosives Expert', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (135, 'Zilean the Chronokeeper', 'Mage');
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`) VALUES (136, 'Zyra Rise of the Thorns', 'Mage');

COMMIT;

