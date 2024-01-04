#Change Column Names
ALTER TABLE center_draft_positions 
CHANGE COLUMN `Player Name` `Player_Name` text;
ALTER TABLE center_draft_positions 
CHANGE COLUMN `Draft Position` `Draft_Position` int;
ALTER TABLE center_draft_positions 
CHANGE COLUMN `Draft Year` `Draft_Year` int;

#Join center_draft_positions with raptor_with_position
CREATE TABLE raptor_draft_positions
SELECT P.player_name, P.POS, P.mp, P.raptor_total, P.war_total, D.Draft_Position, D.Draft_Year
FROM raptor_with_positions P
LEFT JOIN center_draft_positions D
ON P.player_name = D.Player_Name;

#Select all Centers with over 200 minutes
SELECT * 
FROM raptor_draft_positions
WHERE mp > 200 AND POS = 'C';

#Group Centers by Draft Position
SELECT
	CASE
		WHEN Draft_Position <= 15 AND Draft_Position IS NOT NULL THEN '1-15'
        WHEN Draft_Position BETWEEN 16 AND 30 AND Draft_Position is NOT NULL THEN '16-30'
        WHEN Draft_Position > 30 AND Draft_Position IS NOT NULL THEN '31+'
	END AS Draft_Range, AVG(raptor_total)
FROM raptor_draft_positions
WHERE mp > 200 AND POS = 'C'
GROUP BY Draft_Range;
	