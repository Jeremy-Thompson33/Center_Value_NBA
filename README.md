# Center_Value_NBA
Analyzing where centers should be drafted in the NBA draft to maximize value.

# Ask
1. Are centers in the NBA even valuable in winning games?
2. How do centers drafted in the top 15 picks of the draft compare with the rest of the centers drafted?

# Prepare
- Downloaded Modern RAPTOR by Player Data --> https://github.com/fivethirtyeight/data/blob/master/nba-raptor/modern_RAPTOR_by_player.csv
- Filtered Modern RAPTOR by Player Data to only include players from the 2022 season -->
modern_RAPTOR_by_player_2022.csv
- Downloaded 2023 Player Stats Data (includes position of players which the previous dataset did not include) --> 2023-NBA-Player-Stats-Dashboard/2023_nba_player_stats.csv at main · v00d0079/2023-NBA-Player-Stats-Dashboard · GitHub
- Uploaded data into MySQL

# Process
- Joined tables and cleaned null values in MySQL --> Cleaning_raptor_with_positions.sql

# Analyze 1
- Ran SQL queries in raptor_with_positions.csv to determine if centers are valuable in the NBA --> Analyzing_RAPTOR_and_WAR_data.sql
- I used two metrics to measure value; RAPTOR and WAR. RAPTOR is a metric created by FiveThirtyEight to measure a player's impact on both offense and defense. WAR stands for 'Wins Above Replacement,' which measures how many wins the player would add to a team.
### Findings
  - Centers have a higher average WAR and RAPTOR than guards and forwards. This suggests that centers are just as valuable or more valuable than other positions in the NBA. This is true even when you remove the two best centers in the league in terms of these metrics.

# Analyze 2
- Ran SQL queries in a new table centers_raptor_and_draft_data.csv to investigate how early a center should be drafted --> Working_with_RAPTOR_Draft_Positions.sql
