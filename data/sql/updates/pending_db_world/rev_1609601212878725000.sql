INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1609601212878725000');
DELETE FROM `gossip_menu` WHERE `MenuID` IN (2405, 2406, 2407, 2408);
INSERT INTO `gossip_menu` VALUES
    (2405, 3077),
    (2405, 3097),
    (2405, 3098),
    (2405, 3099),
    (2406, 3100),
    (2407, 3101),
    (2408, 3102);
DELETE FROM `conditions` WHERE `SourceGroup` = 2405;
INSERT INTO `conditions` VALUES
	(14, 2405, 3097, 0, 0, 8, 0, 4512, 0, 0, 0, 0, 0, '', 'Show gossip text 3099 if quest \'A Little Slime Goes a Long Way (Part 1)\' is rewarded'),
	(14, 2405, 3097, 0, 0, 9, 0, 4513, 0, 0, 1, 0, 0, '', 'Show gossip text 3099 if quest \'A Little Slime Goes a Long Way (Part 2)\' is not taken'),
	(14, 2405, 3099, 0, 0, 9, 0, 4513, 0, 0, 0, 0, 0, '', 'Show gossip text 3099 if quest \'A Little Slime Goes a Long Way (Part 2)\' is taken'),
	(14, 2405, 3098, 0, 0, 8, 0, 4513, 0, 0, 0, 0, 0, '', 'Show gossip text 3098 if quest \'A Little Slime Goes a Long Way (Part 2)\' is rewarded'),
	(15, 2405, 0, 0, 0, 9, 0, 4513, 0, 0, 0, 0, 0, '', 'Show gossip option if quest \'A Little Slime Goes a Long Way (Part 2)\' is taken');
