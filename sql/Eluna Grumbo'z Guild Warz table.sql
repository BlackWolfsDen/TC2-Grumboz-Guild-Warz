-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.9-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.1.0.4867
-- Grumboz Guild Warz            4.3.4 Cataclysm Eluna
-- --------------------------------------------------------

CREATE DATABASE IF NOT EXISTS `guild_warz_434` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `guild_warz_434`;

CREATE TABLE IF NOT EXISTS `commands` (
  `guild` varchar(50) NOT NULL DEFAULT '' COMMENT 'Do Not Touch',
  `commands` varchar(10) NOT NULL DEFAULT 'commands',
  `info_loc` varchar(10) NOT NULL DEFAULT 'info',
  `list_loc` varchar(10) NOT NULL DEFAULT 'list',
  `tele` varchar(6) NOT NULL DEFAULT 'gtele',
  `version` varchar(15) NOT NULL DEFAULT 'ver',
  `GLD_lvlb` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'Minimum Required Guild member level to access Guild Master buy commands. Guild Master = 0 , anything over + is rank below Guild master.',
  `GLD_lvls` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'Minimum Required Guild member level to access Guild Master sell commands. Guild Master = 0 , anything over + is rank below Guild master.',
  `respawn_flag` varchar(50) NOT NULL DEFAULT 'flag' COMMENT 'GM command spawns and assigns a flag to a guild owned area. will return an error if location is owned by SERVER',
  `details_loc` varchar(50) NOT NULL DEFAULT 'loc' COMMENT 'GM command gives more info about location.',
  `table` varchar(50) NOT NULL DEFAULT 'table' COMMENT 'GM command reloads GW table.',
  `GM_admin` tinyint(3) unsigned NOT NULL DEFAULT '4' COMMENT 'GM rank of server admin',
  `GM_minimum` tinyint(1) unsigned NOT NULL DEFAULT '3' COMMENT 'Minimum Required Gm security level to use GM level commands.',
  `currency` bigint(20) unsigned NOT NULL DEFAULT '62006' COMMENT 'item id for currency used.',
  `pig_payz` bigint(20) unsigned NOT NULL DEFAULT '100000' COMMENT 'amount in copper that each pig payz. hence "pig payz". default 100000 = 10g ',
  `pig_payz_timer` bigint(20) unsigned NOT NULL DEFAULT '1800000' COMMENT 'timer for pig payz. default  1800000 = 30 minutes.',
  `gift_count` tinyint(3) unsigned NOT NULL DEFAULT '25' COMMENT 'how many of currency item to give to guildmaster of newly created guild.',
  `flag_require` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'does capturing a flag require killing all guards? default  == 0 no ; 1 == yes',
  `Server` varchar(6) NOT NULL DEFAULT 'SERVER' COMMENT 'Do Not Touch',
  `command_set` varchar(50) NOT NULL DEFAULT 'set' COMMENT 'Do Not Touch ',
  `anarchy` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'pure GvG PvP no faction filter.',
  `f_timer` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'applies a cooldown-timer when a flag spaws. 0=off::1=on',
  `s_timer` smallint(5) unsigned NOT NULL DEFAULT '300' COMMENT 'no-tag-flag timer cooldown time in seconds. i.e. 5 minutes = 300 seconds.',
  `guild_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'guild id',
  `guild_invite` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'guild invite system. 0 == off :: 1 == on',

  `loc` varchar(15) NOT NULL DEFAULT 'area',
  `loc_cost` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT 'price for basic empty zone.',
  `flag_id` mediumint(8) unsigned NOT NULL DEFAULT '187432' COMMENT 'Do Not Touch',
  `farm` varchar(15) NOT NULL DEFAULT 'farm',
  `farm_cost` smallint(5) unsigned NOT NULL DEFAULT '5' COMMENT 'price for small cheezy government issued house.',
  `farm_L` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'how many farms per location.',
  `farm_id` mediumint(8) unsigned NOT NULL DEFAULT '500000' COMMENT 'Do Not Touch',
  `barrack` varchar(15) NOT NULL DEFAULT 'barrack',
  `barrack_cost` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT 'price for small cheezy government issued house.',
  `barrack_L` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'how many barracks per location.',
  `barrack_id` mediumint(8) unsigned NOT NULL DEFAULT '500002' COMMENT 'Do Not Touch',
  `hall` varchar(15) NOT NULL DEFAULT 'hall',
  `hall_cost` smallint(5) unsigned NOT NULL DEFAULT '100' COMMENT 'price for small cheezy government issued house.',
  `hall_L` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'how many houses per location.',
  `hall_id` mediumint(8) unsigned NOT NULL DEFAULT '500004' COMMENT 'Do Not Touch',
   `pig` varchar(15) NOT NULL DEFAULT 'pig',
  `pig_cost` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'price for one of these porkerz',
  `pig_L` smallint(5) unsigned NOT NULL DEFAULT '20' COMMENT 'how many pigs per farm.',
  `pig_id` mediumint(8) unsigned NOT NULL DEFAULT '49000' COMMENT 'Do Not Touch',
  `guard` varchar(15) NOT NULL DEFAULT 'guard',
  `guard_cost` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'how much is your back worth guarding?',
  `guard_L` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT 'how many guards per location.',
  `guard_id` mediumint(8) unsigned NOT NULL DEFAULT '49002' COMMENT 'Do Not Touch',
  `vendor1` varchar(15) NOT NULL DEFAULT 'vendor1',
  `vendor1_cost` smallint(5) unsigned NOT NULL DEFAULT '25',
  `vendor1_L` smallint(5) unsigned NOT NULL DEFAULT '1',
  `vendor1_id` mediumint(8) unsigned NOT NULL DEFAULT '49004' COMMENT 'Do Not Touch',
  `vendor2` varchar(15) NOT NULL DEFAULT 'vendor2',
  `vendor2_cost` smallint(5) unsigned NOT NULL DEFAULT '25',
  `vendor2_L` smallint(5) unsigned NOT NULL DEFAULT '1',
  `vendor2_id` mediumint(8) unsigned NOT NULL DEFAULT '49006' COMMENT 'Do Not Touch',
  `vendor3` varchar(15) NOT NULL DEFAULT 'vendor3',
  `vendor3_cost` smallint(5) unsigned NOT NULL DEFAULT '25',
  `vendor3_L` smallint(5) unsigned NOT NULL DEFAULT '1',
  `vendor3_id` mediumint(8) unsigned NOT NULL DEFAULT '49008' COMMENT 'Do Not Touch',
  `cannon` varchar(15) NOT NULL DEFAULT 'cannon',
  `cannon_cost` smallint(5) unsigned NOT NULL DEFAULT '100',
  `cannon_L` smallint(5) unsigned NOT NULL DEFAULT '3',
  `cannon_id` mediumint(8) unsigned NOT NULL DEFAULT '49010' COMMENT 'Do Not Touch',
  `vault` varchar(15) NOT NULL DEFAULT 'vault',
  `vault_cost` smallint(5) unsigned NOT NULL DEFAULT '100',
  `vault_L` smallint(5) unsigned NOT NULL DEFAULT '3',
  `vault_id` mediumint(8) unsigned NOT NULL DEFAULT '500006' COMMENT 'Do Not Touch',
  `mailbox` varchar(15) NOT NULL DEFAULT 'mailbox',
  `mailbox_cost` smallint(5) unsigned NOT NULL DEFAULT '10',
  `mailbox_L` smallint(5) unsigned NOT NULL DEFAULT '3',
  `mailbox_id` mediumint(8) unsigned NOT NULL DEFAULT '5000808' COMMENT 'Do Not Touch',

  `color_1` varchar(10) NOT NULL DEFAULT '|cff00cc00' COMMENT 'Command color GREEN',
  `color_2` varchar(10) NOT NULL DEFAULT '|cffFFFF00' COMMENT 'Value color YELLOW',
  `color_3` varchar(10) NOT NULL DEFAULT '|cffFFFFFF' COMMENT 'Info color WHITE',
  `color_4` varchar(10) NOT NULL DEFAULT '|cff3399FF' COMMENT 'Alliance color BLUE',
  `color_5` varchar(10) NOT NULL DEFAULT '|cffFF0000' COMMENT 'Horde color RED',
  `color_6` varchar(10) NOT NULL DEFAULT '|cffFFFF00' COMMENT 'For Sale color YELLOW',
  `color_7` varchar(10) NOT NULL DEFAULT '|cffFF0000' COMMENT 'LOCKED color RED',
  `color_8` varchar(10) NOT NULL DEFAULT '|cffC0C0C0' COMMENT 'Titles color GREY',
  `color_9` varchar(10) NOT NULL DEFAULT '|cff000000' COMMENT 'Separators color BLACK',
  `color_10` varchar(10) NOT NULL DEFAULT '|cff00cc00' COMMENT 'HELP Commands color GREEN',
  `color_11` varchar(10) NOT NULL DEFAULT '|cffFFFF00' COMMENT 'HELP Description color YELLOW',
  `color_12` varchar(10) NOT NULL DEFAULT '|cffFF0000' COMMENT 'SET Error color RED',
  `color_13` varchar(10) NOT NULL DEFAULT '|cffFFFFFF' COMMENT 'SET Values color WHITE',
  `color_14` varchar(10) NOT NULL DEFAULT '|cff00cc00' COMMENT 'Good Announcements color GREEN',
  `color_15` varchar(10) NOT NULL DEFAULT '|cffFF0000' COMMENT 'Bad Annoucements RED',
  PRIMARY KEY (`guild`),
  UNIQUE KEY `guild` (`guild`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='version 1.76';

REPLACE INTO `commands` (`guild`, `commands`, `info_loc`, `list_loc`, `tele`, `version`, `GLD_lvlb`, `GLD_lvls`, `respawn_flag`, `details_loc`, `table`, `GM_admin`, `GM_minimum`, `currency`, `pig_payz`, `pig_payz_timer`, `gift_count`, `flag_require`, `Server`, `command_set`, `anarchy`, `f_timer`, `s_timer`, `guild_id`, `guild_invite`, `loc`, `loc_cost`, `flag_id`, `farm`, `farm_cost`, `farm_L`, `farm_id`, `barrack`, `barrack_cost`, `barrack_L`, `barrack_id`, `hall`, `hall_cost`, `hall_L`, `hall_id`, `pig`, `pig_cost`, `pig_L`, `pig_id`, `guard`, `guard_cost`, `guard_L`, `guard_id`, `vendor1`, `vendor1_cost`, `vendor1_L`, `vendor1_id`, `vendor2`, `vendor2_cost`, `vendor2_L`, `vendor2_id`, `vendor3`, `vendor3_cost`, `vendor3_L`, `vendor3_id`, `cannon`, `cannon_cost`, `cannon_L`, `cannon_id`, `vault`, `vault_cost`, `vault_L`, `vault_id`, `mailbox`, `mailbox_cost`, `mailbox_L`, `mailbox_id`, `color_1`, `color_2`, `color_3`, `color_4`, `color_5`, `color_6`, `color_7`, `color_8`, `color_9`, `color_10`, `color_11`, `color_12`, `color_13`, `color_14`, `color_15`) VALUES 
('SERVER', 'commands', 'info', 'list', 'gtele', 'ver', 0, 0, 'flag', 'loc', 'table', 5, 4, 62006, 100000, 1800000, 25, 0, 'SERVER', 'set', 1, 0, 300, 0, 0, 'area', 10, 187432, 'farm', 5, 1, 500000, 'barrack', 10, 1, 500002, 'hall', 100, 1, 500004, 'pig', 1, 20, 49000, 'guard', 1, 10, 49002, 'vendor1', 25, 1, 49004, 'vendor2', 25, 1, 49006, 'vendor3', 25, 1, 49008, 'cannon', 100, 3, 49010, 'vault', 100, 1, 500006, 'mailbox', 10, 1, 500008, '|cff00cc00', '|cffFFFF00', '|cffFFFFFF', '|cff3399FF', '|cffFF0000', '|cffFFFF00', '|cffFF0000', '|cffC0C0C0', '|cff000000', '|cff00cc00', '|cffFFFF00', '|cffFF0000', '|cffFFFFFF', '|cff00cc00', '|cffFF0000');

CREATE TABLE IF NOT EXISTS `help` (
  `entry` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(1028) NOT NULL,
  `example` varchar(1028) NOT NULL,
  `command_level` varchar(1028) NOT NULL,
  PRIMARY KEY (`entry`),
  UNIQUE KEY `entry` (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='version 1.76';

REPLACE INTO `help` (`entry`, `name`, `description`, `example`, `command_level`) VALUES
	(1, 'guild', 'Guild name for command entry . non-modifyable >>>>>DO NOT CHANGE<<<<<<', 'LOCKED', '7'),
	(2, 'commands', 'produces a list of accessible commands by level.', 'set commands comm', '1'),
	(3, 'info_loc', 'produces a basic description of current location.', 'set info_loc look', '1'),
	(4, 'list_loc', 'produces a list of all locations own by player guild sshowing the loocation id, houses, guards, pigs, and value then provides a tally at the end.', 'set list_loc lands', '1'),
	(5, 'tele', 'allows guild members to teleport to guild location flags using location id\'s.', 'set tele goto', '1'),
	(6, 'buy', 'allows guild member to buy.', 'LOCKED', '7'),
	(7, 'sell', 'allows guild member to sell.', 'LOCKED', '7'),
	(8, 'GLD_lvlb', 'allows rank x access to guild master buy commands. guildmaster==0 any number above 0 is a lower guild rank i.e. officer==1.', 'set GLD_lvlb 2', '4'),
	(9, 'GLD_lvls', 'allows rank x access to guild master sell commands. same as LGD_lvlb guild master == 0 officer == 1 etc.. etc..etc...', 'set GLD_lvls 1', '4'),
	(10, 'reset loc', 'allows GM of minimum rank to reset a location onwner to "SERVER" and able to be purchased.', 'LOCKED', '5'),
	(11, 'reset farm', 'allows GM of minimum rank to reset house count of a location to 0', 'LOCKED', '5'),
	(12, 'reset barrack', 'allows GM of minimum rank to reset barrack count of a location to 0', 'LOCKED', '5'),
	(13, 'reset hall', 'allows GM of minimum rank to reset hall count of a location to 0', 'LOCKED', '5'),
	(14, 'reset pig', 'allows GM of minimum rank to reset pig countof a location to 0', 'LOCKED', '5'),
	(15, 'reset guard', 'allows GM of minimum rank to reset guard count of a location to 0', 'LOCKED', '5'),
	(16, 'reset vendor3', 'allows GM of minimum rank to reset vendor_3 count of a location to 0', 'LOCKED', '5'),
	(17, 'respawn flag', 'allows GM of minimum rank to spawn a missing flag and bind it to current location. if location owned by "SERVER" then an error WILL happen.', 'LOCKED', '5'),
	(18, 'details_loc', 'allows a GM of minimum rank to list detailed information about current location.', 'set details_loc sniff', '5'),
	(19, 'table', 'allows a GM of minimum rank to re-load all the guild warrz tables', 'set table brain', '5'),
	(20, 'GM_admin', 'system setting for GM rank of ADMIN acct.', 'set GM_admin 5', '6'),
	(21, 'GM_minimum', 'system setting for GM required minimum rank to access GM commands.', 'set GM_minimum 3', '6'),
	(22, 'currency', 'system setting>>CANNOT BE CHANGED<<', 'LOCKED', '7'),
	(23, 'pig_payz', 'system setting how much each pig payz in copper per half hour. 10g == 100000', 'set pig_payz 100000', '6'),
	(24, 'pig_payz_timer', 'system setting timer for pig payz.', 'set pig_payz 1800000', '6'),
	(25, 'gift_count', 'system setting how much currency to gift to newly created guilds.', 'set gift_count 25', '6'),
	(26, 'flag_require', 'system setting switch does system require all guards dead to capture flag? default == 0 no; 1 == yes', 'set flag_require 1', '6'),
	(27, 'Server', 'game core ID for guild ID storage of game master level commands  >>>>> DO NOT CHANGE  <<<<<', 'LOCKED', '7'),
	(28, 'flag_id', 'game core ID for ally flag id >>>>>DO NOT CHANGE<<<<<', 'LOCKED', '7'),
	(29, 'farm_id', 'game core ID for guild house id >>>>>DO NOT CHANGE<<<<<', 'LOCKED', '7'),
	(30, 'barrack_id', 'game core ID for guild barrack id >>>>>DO NOT CHANGE<<<<<', 'LOCKED', '7'),
	(31, 'hall_id', 'game core ID for guild hall id >>>>>DO NOT CHANGE<<<<<', 'LOCKED', '7'),
	(32, 'pig_id', 'game core ID for guild pig id >>>>>DO NOT CHANGE<<<<<', 'LOCKED', '7'),
	(33, 'guard_id', 'game core ID for guild guard id >>>>>DO NOT CHANGE<<<<<', 'LOCKED', '7'),
	(34, 'vendor1_id', 'game core ID for vendor1 id', 'set vendor1_id 49004', '6'),
	(35, 'vendor2_id', 'game core ID for vendor2 id', 'set vendor2_id 49006', '6'),
	(36, 'vendor3_id', 'game core ID for vendor3 id', 'set vendor3_id 49008', '6'),
	(37, 'cannon_id', 'game core ID for cannon id', 'ADMIN', '6'),
	(38, 'command_set', 'game core command for modifying custom commands   >>>>>DO NOT CHANGE<<<<<', 'LOCKED', '7'),
	(39, 'lock', 'ADMIN command to lock an area from purchase.   >>>>>DO NOT CHANGE<<<<<', 'LOCKED', '7'),
	(40, 'anarchy', 'game core setting allows same team invasions . 0 = off :: 1 = on', 'set anarchy 1', '6'),
	(41, 'f_timer', 'no-tag-flag system  0 = off :: 1 = on', 'set f_timer 1', '6'),
	(42, 's_timer', 'no-tag-flag-timer time in ms.', 'set s_timer 180000', '6'),
	(43, 'guild_id', 'guild id', 'LOCKED', '7'),
	(44, 'guild_invite', 'Guild Level Setting. Guild invite system 0 == off :: 1 == on // default on.', 'set guild_invite 1', '4'),
	(45, 'loc', 'Word used to identify a guild location to support buy/sell.', 'set loc area', '4'),
	(46, 'loc_cost', 'system setting how much x of currency is required to purchase a basic empty location.', 'set loc_cost 10', '6'),
	(47, 'farm', 'Word used to identify a guild farm to support buy/sell.', 'set farm mudhole', '4'),
	(48, 'farm_cost', 'system setting how much x of currency to buy 1 house', 'set house_cost 5', '6'),
	(49, 'farm_L', 'system setting limit how many farms per location', 'set farm_L 1', '6'),
	(50, 'barrack', 'Word used to identify a guild barrack to support buy/sell.', 'set barrack home', '4'),
	(51, 'barrack_cost', 'system setting how much x of currency to buy 1 barrack', 'set barrack_cost 10', '6'),
	(52, 'barrack_L', 'system setting limit how many barracks per farm', 'set barrack_L 1', '6'),
	(53, 'hall', 'Word used to identify a guild hall to support buy/sell.', 'set hall tower', '4'),
	(54, 'hall_cost', 'system setting how much x of currency to buy 1 hall', 'set hall_cost 100', '6'),
	(55, 'hall_L', 'system setting limit how many halls per location', 'set hall_L 1', '6'),
	(56, 'pig', 'Word used to identify a guild pig to support buy/sell.', 'set pig piggy', '4'),
	(57, 'pig_cost', 'system setting how much x of currency to buy 1 guild pig.', 'set pig_cost 1', '6'),
	(58, 'pig_L', 'system setting limit how may pigs per farm.', 'set pig_L 20', '6'),
	(59, 'guard', 'Word used to identify a guild guard to support buy/sell.', 'set guard guard', '4'),
	(60, 'guard_cost', 'system setting how much x of currency to buy 1 guard.', 'set guard_cost 1', '6'),
	(61, 'guard_L', 'system setting limit how many guards per barrack.', 'set guard_L 10', '6'),
	(62, 'vendor1', 'Word used to identify a guild vendor1 to support buy/sell.', 'set vendor1 buffer', '4'),
	(63, 'vendor1_cost', 'system setting how much x of currency to buy vendor 1.', 'set vendor1_cost 30', '6'),
	(64, 'vendor1_L', 'system setting limit how many buff vendors per location.', 'set vendor1_L 2', '6'),
	(65, 'vendor2', 'Word used to identify a guild vendor2 to support buy/sell.', 'set vendor2 gearer', '4'),
	(66, 'vendor2_cost', 'system setting how much x of currency to buy vendor 2.', 'set vendor2_cost 30', '6'),
	(67, 'vendor2_L', 'system setting limit how many buff vendors per location.', 'set vendor2_L 2', '6'),
	(68, 'vendor3', 'Word used to identify a guild vendor3 to support buy/sell.', 'set vendor3 fun', '4'),
	(69, 'vendor3_cost', 'system setting how much x of currency to buy vendor 3.', 'set vendor3_cost 30', '6'),
	(70, 'vendor3_L', 'system setting limit how many buff vendors per location.', 'set vendor3_L 2', '6'),
	(71, 'vault', 'Word used to identify a guild vault to support buy/sell.', 'set vault gbank', '4'),
	(72, 'vault_cost', 'system setting how much x of currency to buy a vault.', 'set vault_cost 100', '6'),
	(73, 'vault_L', 'system setting limit how many vaults per location.', 'set vault_L 1', '6'),
	(74, 'mailbox', 'Word used to identify a guild mailbox to support buy/sell.', 'set mailbox box', '4'),
	(75, 'mailbox_cost', 'system setting how much x of currency to buy a mailbox.', 'set mailbox_cost 10', '6'),
	(76, 'mailbox_L', 'system setting limit how many mailboxs per location.', 'set mailbox_L 1', '6'),
	(77, 'color_1', 'command color GuildMaster Level', 'set color_1 cff000000', '4'),
	(78, 'color_2', 'Setting Value color  GuildMaster Level', 'set color_2 cff000000', '4'),
	(79, 'color_3', 'Info color  GuildMaster Level HEX CODE', 'set color_3 cff000000', '4'),
	(80, 'color_4', 'Alliance color  GuildMaster Level HEX CODE', 'set color_4 cff000000', '4'),
	(81, 'color_5', 'Horde color  GuildMaster Level HEX CODE', 'set color_5 cff000000', '4'),
	(82, 'color_6', 'For Sale color  GuildMaster Level HEX CODE', 'set color_6 cff000000', '4'),
	(83, 'color_7', 'LOCKED color  GuildMaster Level HEX CODE', 'set color_7 cff000000', '4'),
	(84, 'color_8', 'Titles color  GuildMaster Level HEX CODE', 'set color_8 cff000000', '4'),
	(85, 'color_9', 'Separator color  GuildMaster Level HEX CODE', 'set color_9 cff000000', '4'),
	(86, 'color_10', 'Help Commands color  GuildMaster Level HEX CODE', 'set color_10 cff000000', '4'),
	(87, 'color_11', 'Help Description color  GuildMaster Level HEX CODE', 'set color_11 cff000000', '4'),
	(88, 'color_12', 'Set Error color  GuildMaster Level HEX CODE', 'set color_12 cff000000', '4'),
	(89, 'color_13', 'Set Values color  GuildMaster Level HEX CODE', 'set color_13 cff000000', '4'),
	(90, 'color_14', 'Good Announcements  color  GuildMaster Level HEX CODE', 'set color_14 cff000000', '4'),
	(91, 'color_15', 'Bad Announcements  color  GuildMaster Level HEX CODE', 'set color_15 cff000000', '4');

CREATE TABLE IF NOT EXISTS `zones` (
  `entry` bigint(10) unsigned NOT NULL DEFAULT '0',
  `map_id` bigint(10) unsigned NOT NULL DEFAULT '0',
  `area_id` bigint(10) unsigned NOT NULL DEFAULT '0',
  `zone_id` bigint(10) unsigned NOT NULL DEFAULT '0',
  `guild_name` varchar(50) NOT NULL DEFAULT 'SERVER',
  `team` smallint(10) unsigned NOT NULL DEFAULT '2',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `farm_count` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `barrack_count` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `hall_count` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `pig_count` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `guard_count` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `vendor1_count` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `vendor2_count` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `vendor3_count` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `cannon_count` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `vault_count` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `mailbox_count` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `flag_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fs_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'game time (in seconds) when the flag was spawned.',
  `guild_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'guild id',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='version 1.76';

REPLACE INTO `zones` (`entry`, `map_id`, `area_id`, `zone_id`, `guild_name`, `team`, `x`, `y`, `z`, `farm_count`, `barrack_count`, `hall_count`, `pig_count`, `guard_count`, `vendor1_count`, `vendor2_count`, `vendor3_count`, `cannon_count`, `flag_id`, `fs_time`, `guild_id`) VALUES
(1, 0, 0, 0, 'SERVER', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
