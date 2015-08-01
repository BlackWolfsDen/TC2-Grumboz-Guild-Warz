-- // these are created from an Ace based Core. so you may need to change some of the column names.
-- // i slimmed them down to just the required data but you still may need to change column names.

REPLACE INTO `creature_template` (`entry`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `mechanic_immune_mask`, `flags_extra`) VALUES 
(49000, 193, 0, 0, 0, 'Guild War\'z Pig', 'Alliance', NULL, 0, 80, 80, 84, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0),
(49001, 744, 0, 0, 0, 'Guild War\'z Pig', 'Horde', NULL, 0, 80, 80, 83, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0),
(49002, 26725, 0, 0, 0, 'Guild War\'z Guard', 'Alliance', 'Attack', 0, 80, 80, 84, 0, 1.5, 2.5, 1, 4, 1, 520, 0, 0, 17, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AggressorAI', 1, 7, 1, 0, 0, 33024),
(49003, 26725, 0, 0, 0, 'Guild War\'z Guard', 'Horde', 'Attack', 0, 80, 80, 83, 0, 1.5, 2.5, 1, 4, 1, 520, 0, 0, 17, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AggressorAI', 1, 7, 1, 0, 0, 33024),
(49004, 18239, 0, 0, 0, 'Buff Vendor 1', 'Guild War\'z', 'Buy', 0, 80, 80, 35, 129, 1, 1.14286, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0),
(49005, 1322, 0, 0, 0, 'Buff Vendor 1', 'Guild War\'z', 'Buy', 0, 80, 80, 35, 129, 1, 1.14286, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0),
(49006, 10722, 0, 0, 0, 'Fun Vendor 2', 'Guild War\'z', 'Buy', 0, 80, 80, 35, 129, 1, 1.14286, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0),
(49007, 3608, 0, 0, 0, 'Fun Vendor 2', 'Guild War\'z', 'Buy', 0, 80, 80, 35, 129, 1, 1.14286, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0),
(49008, 3527, 0, 0, 0, 'Gear Vendor 3', 'Guild War\'z', 'Buy', 0, 80, 80, 35, 129, 1, 1.14286, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0),
(49009, 1321, 0, 0, 0, 'Gear Vendor 3', 'Guild War\'z', 'Buy', 0, 80, 80, 35, 129, 1, 1.14286, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 0, 0);

REPLACE INTO `creature_template` (`entry`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `mechanic_immune_mask`, `flags_extra`) VALUES 
(49010, 27101, 0, 0, 0, 'Anti-personnel Cannon', '', 'vehichleCursor', 0, 80, 80, 84, 16777216, 1, 1, 1, 1, 1, 32772, 2048, 8, 0, 0, 0, 0, 0, 9, 262176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49872, 160, 0, 0, 'NullAI', 0, 3, 1, 0, 344276858, 2),
(49011, 27101, 0, 0, 0, 'Anti-personnel Cannon', '', 'vehichleCursor', 0, 80, 80, 83, 16777216, 1, 1, 1, 1, 1, 32772, 2048, 8, 0, 0, 0, 0, 0, 9, 262176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49872, 160, 0, 0, 'NullAI', 0, 3, 1, 0, 344276858, 2);

REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(49010, 60682, 1, 0),
(49011, 60682, 1, 0);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `AIName`, `ScriptName`) VALUES 
(187432, 10, 5651, 'Alliance Guild Flag', 'interact', '', '', 35, 0, 4, 0, 0, 0, 3000, 0, '', ''),
(187433, 10, 5652, 'Horde Guild Flag', 'interact', '', '', 35, 0, 4, 0, 0, 0, 3000, 0, '', ''),
(500000, 10, 8060, 'Alliance Guild farm', 'Interact', '', '', 84, 6553632, 0.6, 0, 0, 0, 1, 0, '', ''),
(500001, 10, 8060, 'Horde Guild farm', 'Interact', '', '', 83, 6553632, 0.6, 0, 0, 0, 1, 0, '', ''),
(500002, 10, 8057, 'Alliance Guild Barracks', 'Interact', '', '', 84, 6553632, 0.3, 0, 0, 0, 1, 0, '', ''),
(500003, 10, 8057, 'Horde Guild Barracks', 'Interact', '', '', 83, 6553632, 0.3, 0, 0, 0, 1, 0, '', '');

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data14`, `data18`, `data22`, `AIName`, `ScriptName`) VALUES 
(500004, 33, 7900, 'Tiff\'s Guild Hall', 'Interact', '', '', 84, 6553632, 0.3, 5000, 35074, 0, 19669, 1, 25000, 1, 1, 0, 19672, 1, 1, 19675, 39, 19678, '', ''),
(500005, 33, 7878, 'Grumbo\'z Guild Hall', 'Interact', '', '', 83, 6553632, 0.3, 5000, 35074, 0, 19669, 1, 25000, 1, 1, 0, 19672, 1, 1, 19675, 39, 19678, '', '');

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `AIName`, `ScriptName`) VALUES 
(500006,34,7613, 'Alliance Guild Vault', '', '', '',84,0,1, '', ''),
(500007,34,7613, 'Horde Guild Vault', '', '', '',83,0,1, '', '');

REPLACE INTO `gameobject_template` (`entry`,	`type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `AIName`, `ScriptName`) VALUES 
(500008,19,7605,'Alliance Guild Mailbox','','','',84,0,0.5,'',''),
(500009,19,7605,'Horde Guild Mailbox','','','',83,0,0.5,'','');

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `maxcount`, `stackable`, `bonding`, `description`, `RequiredDisenchantSkill`, `ScriptName`) VALUES 
(62006, 0, 8, -1, 'Guild Coin', 34104, 4, 0, 0, 1, 500000000, 500000000, 0, -1, -1, 2147483647, 2147483647, 0, 'Grumbo\'z Guild Warz', -1, '');

