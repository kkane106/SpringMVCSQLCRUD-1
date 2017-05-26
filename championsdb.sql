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
  `champion_description` VARCHAR(250) NULL,
  `champion_image` VARCHAR(250) NULL,
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
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (1, 'Aatrox the Darkin Blade', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (2, 'Ahri the Nine-Tailed Fox', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (3, 'Akali the Fist of Shadow', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (4, 'Alistar the Minotaur', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (5, 'Amumu the Sad Mummy', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (6, 'Anivia the Cryophoenix', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (7, 'Annie the Dark Child', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (8, 'Ashe the Frost Archer', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (9, 'Aurelion Sol the Star Forger', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (10, 'Azir the Emperor of the Sands', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (11, 'Bard the Wandering Caretaker', 'Support', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (12, 'Blitzcrank the Great Steam Golem', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (13, 'Brand the Burning Vengeance', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (14, 'Braum the Heart of the Freljord', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (15, 'Caitlyn the Sheriff of Piltover', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (16, 'Camille the Steel Shadow', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (17, 'Cassiopeia the Serpent\'s Embrace', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (18, 'Cho\'Gath the Terror of the Void', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (19, 'Corki the Daring Bombardier', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (20, 'Darius the Hand of Noxus', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (21, 'Diana Scorn of the Moon', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (22, 'Dr. Mundo the Madman of Zaun', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (23, 'Draven the Glorious Executioner', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (24, 'Ekko the Boy Who Shattered Time', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (25, 'Elise the Spider Queen', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (26, 'Evelynn the Widowmaker', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (27, 'Ezreal the Prodigal Explorer', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (28, 'Fiddlesticks the Harbinger of Doom', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (29, 'Fiora the Grand Duelist', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (30, 'Fizz the Tidal Trickster', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (31, 'Galio the Colossus', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (32, 'Gangplank the Saltwater Scourge', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (33, 'Garen the Might of Demacia', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (34, 'Gnar the Missing Link', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (35, 'Gragas the Rabble Rouser', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (36, 'Graves the Outlaw', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (37, 'Hecarim the Shadow of War', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (38, 'Heimerdinger the Revered Inventor', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (39, 'Illaoi the Kraken Priestess', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (40, 'Irelia the Will of the Blades', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (41, 'Ivern the Green Father', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (42, 'Janna the Storm\'s Fury', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (43, 'Jarvan IV the Eexemplar of Demacia', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (44, 'Jax Grandmaster at Arms', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (45, 'Jayce the Defender of Tomorrow', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (46, 'Jhin the Virtuoso', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (47, 'Jinx the Loose Cannon', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (48, 'Kalista the Spear of Vengeance', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (49, 'Karma the Enlightened One', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (50, 'Karthus the Deathsinger', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (51, 'Kassadin the Void Walker', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (52, 'Katarina the Sinister Blade', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (53, 'Kayle the Judicator', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (54, 'Kennen the Heart of the Tempest', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (55, 'Kha\'Zix the Voidreaver', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (56, 'Kindred the Eternal Hunters', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (57, 'Kled the Cantankerous Cavalier', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (58, 'Kog\'Maw the Mouth of the Abyss', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (59, 'LeBlanc the Deceiver', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (60, 'LeeSin the Blind Monk', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (61, 'Leona the Radiant Dawn', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (62, 'Lissandra the Ice Witch', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (63, 'Lucian the Purifier', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (64, 'Lulu the Fae Sorceress', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (65, 'Lux the Lady of Luminosity', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (66, 'Malphite Shard of the Monolith', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (67, 'Malzahar the Prophet of the Void', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (68, 'Maokai the Twisted Treant', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (69, 'Master Yi the Wuju Bladesman', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (70, 'Miss Fortune the Bounty Hunter', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (71, 'Mordekaiser the Iron Revenant', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (72, 'Morgana the Fallen Angel', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (73, 'Nami the Tidecaller', 'Support', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (74, 'Nasus the Curator of the Sands', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (75, 'Nautilus the Titan of the Depths', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (76, 'Nidalee the Bestial Huntress', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (77, 'Nocturne the Eternal Nightmare', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (78, 'Nunu the Yeti Rider', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (79, 'Olaf the Bersker', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (80, 'Orianna the Lady of Clockwork', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (81, 'Pantheon the Artisan of War', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (82, 'Poppy Keeper of the Hammer', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (83, 'Quinn Demacia\'s Wings', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (84, 'Rakan the Charmer', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (85, 'Rammus the Armordillo', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (86, 'Rek\'Sai the Void Burrower', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (87, 'Renekton the Butcher of the Sands', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (88, 'Rengar the Pridestalker', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (89, 'Riven the Exile', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (90, 'Rumble the Mechanized Menace', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (91, 'Ryze the Rune Mage', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (92, 'Sejuani Furth of the North', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (93, 'Shaco the Demon Jester', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (94, 'Shen the Eye of Twilight', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (95, 'Shyvana the Half-Dragon', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (96, 'Singed the Mad Chemist', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (97, 'Sion the Undead Juggernaut', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (98, 'Sivir the Battle Mistress', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (99, 'Skarner the Crystal Vanguard', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (100, 'Sona Maven of the Strings', 'Support', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (101, 'Soraka the Starchild', 'Support', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (102, 'Swain the Master Tactician', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (103, 'Syndra the Dark Sovereign', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (104, 'Tahm Kench the River King', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (105, 'Taliyah the Stoneweaver', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (106, 'Talon the Blade\'s Shadow', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (107, 'Taric the Shield of Valoran', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (108, 'Teemo the Swift Scout', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (109, 'Thresh the Chain Warden', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (110, 'Tristana the Yordle Gunner', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (111, 'Trundle the Troll King', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (112, 'Tryndamere the Barbarian King', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (113, 'Twisted Fate the Card Master', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (114, 'Twitch the Plague Rat', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (115, 'Udyr the Spirit Walker', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (116, 'Urgot the Headsman\'s Pride', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (117, 'Varus the Arrow of Retribution', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (118, 'Vayne the Night Hunter', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (119, 'Veigar the Tiny Master of Evil', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (120, 'Vel\'Koz the Eye of the Void', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (121, 'Vi the Piltover Enforcer', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (122, 'Viktor the Machine Herald', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (123, 'Vladimir the Crimson Reaper', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (124, 'Volibear the Thunder\'s Roar', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (125, 'Warwick the Uncaged Wrath of Zaun', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (126, 'Wukong the Monkey King', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (127, 'Xayah the Rebel', 'Marksman', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (128, 'Xerath the Magus Ascendant', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (129, 'Xin Zhao the Seneschal of Demacia', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (130, 'Yasuo the Unforgiven', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (131, 'Yorick Shepherd of Souls', 'Fighter', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (132, 'Zac the Secret Weapon', 'Tank', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (133, 'Zed the Master of Shadows', 'Slayer', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (134, 'Ziggs the Hexplosives Expert', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (135, 'Zilean the Chronokeeper', 'Mage', NULL, NULL);
INSERT INTO `champion` (`id`, `champion_name`, `champion_role`, `champion_description`, `champion_image`) VALUES (136, 'Zyra Rise of the Thorns', 'Mage', NULL, NULL);

COMMIT;

