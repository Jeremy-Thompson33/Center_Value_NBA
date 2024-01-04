SELECT *
FROM raptor_with_positions
WHERE mp > 900
ORDER BY raptor_total DESC
LIMIT 10;

#Average RAPTOR of all players with greater than 200 minutes
SELECT AVG(raptor_total) AS avg_raptor
FROM raptor_with_positions
WHERE mp > 200;

#Average RAPTOR and WAR by position
SELECT POS, AVG(war_total) AS AVERAGE_WAR, AVG(raptor_total) AS AVERAGE_RAPTOR
FROM raptor_with_positions
WHERE mp > 200
GROUP BY POS;

# Without Jokic and Embiid
SELECT POS, AVG(war_total) AS AVERAGE_WAR, AVG(raptor_total) AS AVERAGE_RAPTOR
FROM raptor_with_positions
WHERE mp > 200 AND player_name != 'Nikola Jokic' AND player_name != 'Joel Embiid'
GROUP BY POS;

#RAPTOR and WAR for Centers
SELECT player_name, POS, mp, raptor_total, war_total
FROM raptor_with_positions
WHERE POS = 'C' AND mp > 200;


