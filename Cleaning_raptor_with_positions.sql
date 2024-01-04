#Joined the tables to get position matched up with each player's RAPTOR rating
CREATE TABLE raptor_with_positions
SELECT R.player_name, S.POS, R.mp, R.raptor_total, R.war_total
FROM raptor_by_player_2022 R
LEFT JOIN 2023_nba_player_stats S
ON R.player_name = S.Player;


#Find the nulls
SELECT *
FROM raptor_with_positions
WHERE POS IS NULL AND mp > 200;


#Clean the null positions
UPDATE raptor_with_positions
SET POS = 'PG'
WHERE player_name IN('Brad Wanamaker', 'Isaiah Thomas', 'Justin Robinson', 'Mychal Mulder', 'Tim Frazier', 'Frank Jackson', 'Brandon Williams', 'Keifer Sykes', 'Brandon Goodwin', 'Chris Chiozza', 'Keljin Blevins', 'Langston Galloway', 'D.J. Augustin', 
'Lonzo Ball', 'Eric Bledsoe', 'Trey Burke', 'Gary Clark', 'P.J. Dozier', 
'Elfrid Payton','Tomas Satoransky', 'Rajon Rondo');

UPDATE raptor_with_positions
SET POS = 'SG'
WHERE player_name IN('Denzel Valentine', 'Georgios Kalaitzakis', 'Sterling Brown', 'Matt Thomas', 'David Nwaba', 'Lance Stephenson', 'Timothe Luwawu-Cabarrot', 'Rodney Hood', 'Armoni Brooks','CJ Elleby','Justin Anderson', 'Kent Bazemore', 'Avery Bradley', 'Wayne Ellington',
 'Josh Jackson', 'Jeremy Lamb', 'Ben McLemore', 'Tony Snell', 'Lou Williams');

UPDATE raptor_with_positions
SET POS = 'SF'
WHERE player_name IN('Killian Tillie', 'Alfonzo McKinnie', 'Jake Layman', 'Jaylen Hoard', 'Kelan Martin', 'Elijah Hughes', 'Ignas Brazdeikis', 'Maurice Harkless','Carmelo Anthony', 'OG Anunoby', 'Trevor Ariza', 
'Miles Bridges', 'Charlie Brown Jr.');

UPDATE raptor_with_positions
SET POS = 'PF'
WHERE player_name IN('Ed Davis','Eric Paschall', 'LaMarcus Aldridge', 'Nemanja Bjelica', 'Marquese Chriss', 'Danilo Gallinari',
 'Paul Millsap', 'Semi Ojeleye');

UPDATE raptor_with_positions
SET POS = 'C'
WHERE player_name IN('DeMarcus Cousins', 'Derrick Favors', 'Dwight Howard', 'Enes Freedom',
 'Greg Monroe', 'Tristan Thompson', 'Hassan Whiteside');


#Classify Everyone as a guard, forward, or center
UPDATE raptor_with_positions
SET POS = 'G'
WHERE POS = 'PG' OR POS = 'SG';

UPDATE raptor_with_positions
SET POS = 'F'
WHERE POS = 'PF' OR POS = 'SF';


 
 
