-- Joseph Redpath's Monument
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=176145;
DELETE FROM `smart_scripts` WHERE `entryorguid`=176145 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(176145,1,0,0,70,0,100,1,2,0,0,0,12,10936,3,0,0,0,0,8,0,0,0,1165.83,-1719.55,60.9121,2.1369,"Joseph Redpath's Monument - On Gameobject State Changed - Summon Creature 'Joseph Redpath'"),
(176145,1,1,0,70,0,100,1,2,0,0,0,1,2,0,0,0,0,0,19,10936,0,0,0,0,0,0,"Joseph Redpath's Monument - On Gameobject State Changed - Say Line 2 (Joseph Redpath)");

DELETE FROM `creature_text` WHERE `CreatureID`=10936 AND `GroupID`=2;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(10936,2,0,"Save me...",15,0,100,0,0,0,6274,0,"Joseph Redpath");
